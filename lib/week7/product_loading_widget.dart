import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductLoadingWidget extends StatelessWidget {
  const ProductLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. We keep the outer container style (Shape/Shadows)
    // so the card itself sits in the grid immediately.
    return Container(
      decoration: _buildBoxDecoration(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Shimmer.fromColors(
          // Standard shimmer colors (light grey to white)
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 2. Placeholder for Image
                  // We use a fixed height or aspect ratio because we don't have the image yet
                  Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.white,
                  ),

                  // Spacing
                  const SizedBox(height: 12),

                  // 3. Placeholders for Text lines
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title Bone
                        Container(
                          height: 16,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Price Bone
                        Container(
                          height: 14,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Stock Bone
                        Container(
                          height: 12,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 4. Placeholder for Add to Cart Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reuse your exact decoration to maintain consistency
  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: const Color.fromRGBO(255, 255, 255, 0.1),
          blurRadius: 1,
          offset: const Offset(0, 1),
        ),
        BoxShadow(
          color: const Color.fromRGBO(50, 50, 93, 0.25),
          blurRadius: 100,
          spreadRadius: -20,
          offset: const Offset(0, 50),
        ),
      ],
    );
  }
}
