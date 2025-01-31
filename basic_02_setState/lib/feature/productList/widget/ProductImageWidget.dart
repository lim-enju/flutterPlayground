import 'package:basic_02_setState/data/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget(
      {super.key, required this.product, required this.rank});

  final ProductItem product;
  final int rank;

  @override
  Widget build(BuildContext context) {
    // only 상품 여부
    var onlyImageUrl = product.badges
        ?.firstWhere((item) => item?.position == 3, orElse: () => null)
        ?.image
        ?.url;
    var isOnly = onlyImageUrl != null;

    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          Image.network(
            product.imageUrl ?? '',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/rankBadge.svg',
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  Positioned(
                    child: Text(
                      rank.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: isOnly,
                child: Container(
                  margin: EdgeInsets.only(right: 8),
                  child: Image.network(
                    onlyImageUrl ?? '',
                    fit: BoxFit.contain,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
