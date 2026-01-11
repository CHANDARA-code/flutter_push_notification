import React, { useState, useEffect } from "react";
import {
  ExternalLink,
  Smartphone,
  Share2,
  AlertCircle,
  Check,
  X,
  ArrowRight,
} from "lucide-react";

const App = () => {
  // State for the custom deep link input
  const [customScheme, setCustomScheme] = useState("myapp://content/123");
  const [fallbackUrl, setFallbackUrl] = useState(
    "https://play.google.com/store/apps"
  );
  const [status, setStatus] = useState(null); // 'attempting', 'failed', 'success' (simulated)

  // Clear status after a delay
  useEffect(() => {
    if (status) {
      const timer = setTimeout(() => setStatus(null), 3000);
      return () => clearTimeout(timer);
    }
  }, [status]);

  /**
   * The core logic for triggering a deep link.
   * In a real device, window.location.href triggers the OS to look for the app.
   */
  const triggerDeepLink = (url, fallback = null) => {
    setStatus("attempting");

    // 1. Attempt to open the App
    // using window.location.href is the standard way to trigger a custom scheme
    const now = Date.now();

    // We use a try-catch, though often protocol errors are silent in JS
    try {
      window.location.href = url;
    } catch (e) {
      console.error("Deep link failed", e);
      setStatus("failed");
    }

    // 2. Fallback Logic (Simple Timeout Approach)
    // If the user is still on this page after a split second, the app likely didn't open.
    // Note: Modern browsers/OS are making this harder to detect reliably via JS alone.
    if (fallback) {
      setTimeout(() => {
        // If the window is still visible/focused, imply the app didn't launch
        if (!document.hidden && Date.now() - now < 1000) {
          console.log("App not detected, navigating to fallback...");
          window.location.href = fallback;
        }
      }, 500); // 500ms wait
    }
  };

  return (
    <div className="min-h-screen bg-slate-50 text-slate-900 font-sans p-4 md:p-8 flex items-center justify-center">
      <div className="max-w-md w-full bg-white rounded-2xl shadow-xl overflow-hidden border border-slate-100">
        {/* Header */}
        <div className="bg-blue-600 p-6 text-white text-center">
          <div className="mx-auto bg-white/20 w-16 h-16 rounded-full flex items-center justify-center mb-4 backdrop-blur-sm">
            <Smartphone size={32} className="text-white" />
          </div>
          <h1 className="text-2xl font-bold">Deep Link Tester</h1>
          <p className="text-blue-100 text-sm mt-1">Vite React App Demo</p>
        </div>

        <div className="p-6 space-y-8">
          {/* Section 1: Common System Links */}
          <div>
            <h2 className="text-xs font-semibold text-slate-400 uppercase tracking-wider mb-4">
              System Protocols (Works on Mobile)
            </h2>
            <div className="grid grid-cols-2 gap-3">
              <button
                onClick={() => triggerDeepLink("tel:1234567890")}
                className="flex items-center justify-center gap-2 p-3 bg-slate-50 hover:bg-slate-100 border border-slate-200 rounded-xl transition-colors text-sm font-medium"
              >
                <Smartphone size={16} className="text-green-600" />
                Call (Tel)
              </button>
              <button
                onClick={() => triggerDeepLink("sms:1234567890")}
                className="flex items-center justify-center gap-2 p-3 bg-slate-50 hover:bg-slate-100 border border-slate-200 rounded-xl transition-colors text-sm font-medium"
              >
                <Share2 size={16} className="text-blue-600" />
                SMS
              </button>
              <button
                onClick={() => triggerDeepLink("mailto:test@example.com")}
                className="col-span-2 flex items-center justify-center gap-2 p-3 bg-slate-50 hover:bg-slate-100 border border-slate-200 rounded-xl transition-colors text-sm font-medium"
              >
                <ExternalLink size={16} className="text-orange-600" />
                Send Email (Mailto)
              </button>
            </div>
          </div>

          <hr className="border-slate-100" />

          {/* Section 2: Custom Deep Link Tester */}
          <div>
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-xs font-semibold text-slate-400 uppercase tracking-wider">
                Test Custom App Scheme
              </h2>
              <span className="text-[10px] bg-blue-100 text-blue-700 px-2 py-0.5 rounded-full font-medium">
                Advanced
              </span>
            </div>

            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-slate-700 mb-1">
                  Deep Link URL
                </label>
                <input
                  type="text"
                  value={customScheme}
                  onChange={(e) => setCustomScheme(e.target.value)}
                  placeholder="scheme://path"
                  className="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 outline-none text-sm font-mono text-slate-600"
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-slate-700 mb-1">
                  Fallback URL (Web/Store)
                </label>
                <input
                  type="text"
                  value={fallbackUrl}
                  onChange={(e) => setFallbackUrl(e.target.value)}
                  placeholder="https://..."
                  className="w-full p-3 bg-slate-50 border border-slate-200 rounded-xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 outline-none text-sm text-slate-600"
                />
              </div>

              <button
                onClick={() => triggerDeepLink(customScheme, fallbackUrl)}
                className="w-full py-3.5 bg-blue-600 hover:bg-blue-700 active:bg-blue-800 text-white rounded-xl font-semibold shadow-lg shadow-blue-200 transition-all flex items-center justify-center gap-2"
              >
                Launch App
                <ArrowRight size={18} />
              </button>
            </div>
          </div>

          {/* Status Indicator */}
          {status && (
            <div
              className={`
              p-3 rounded-lg flex items-start gap-3 text-sm animate-in fade-in slide-in-from-bottom-2 duration-300
              ${status === "attempting" ? "bg-blue-50 text-blue-700" : ""}
              ${status === "failed" ? "bg-red-50 text-red-700" : ""}
            `}
            >
              {status === "attempting" && (
                <AlertCircle size={18} className="shrink-0 mt-0.5" />
              )}
              {status === "failed" && (
                <X size={18} className="shrink-0 mt-0.5" />
              )}
              <div>
                <p className="font-medium">
                  {status === "attempting"
                    ? "Attempting to open app..."
                    : "Action failed or blocked."}
                </p>
                {status === "attempting" && (
                  <p className="text-xs opacity-80 mt-1">
                    If nothing happens, the app may not be installed.
                  </p>
                )}
              </div>
            </div>
          )}
        </div>

        {/* Footer / Instructions */}
        <div className="bg-slate-50 p-4 text-center border-t border-slate-100">
          <p className="text-xs text-slate-400">
            For <strong>Universal Links</strong> (iOS) or{" "}
            <strong>App Links</strong> (Android), ensure your domain is verified
            in the app manifest.
          </p>
        </div>
      </div>
    </div>
  );
};

export default App;
