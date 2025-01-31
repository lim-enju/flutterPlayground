import 'package:basic_04_valueNotifier/data/Product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({
    super.key,
    required this.product,
  });

  final ProductItem product;

  @override
  Widget build(BuildContext context) {
    // 제품 가격
    var amount = product.price?.referencePrice ?? 0;
    final NumberFormat numberFormat = NumberFormat('#,###'); // 컴마 구분자 포맷
    final String formattedAmount = numberFormat.format(amount);

    // 할인율
    var discountRate =
        100 - ((amount / (product.price?.regularPrice ?? 1)) * 100).toInt();

    // 리뷰 갯수
    var reviewCount = product.reviewCount ?? 0;
    final String formattedReviewCount = numberFormat.format(reviewCount);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.brand?.name ?? '',
            style: TextStyle(fontSize: 10),
          ),
          Text(
            product.name ?? '',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          Row(
            children: [
              Text(
                '$discountRate%',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                formattedAmount,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.blue,
                size: 10,
              ),
              Text(
                '${product.reviewAvg ?? 0}',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                '리뷰',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                formattedReviewCount,
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Visibility(
            visible: product.isSpecialPrice ?? false,
            child: Container(
              padding: EdgeInsets.only(
                left: 4,
                right: 4,
                top: 1,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: Text(
                '특가',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Visibility(
            visible: product.couponBadge != null,
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    product.couponBadge?.image ?? '',
                    fit: BoxFit.contain,
                    width: 10,
                  ),
                  Text(
                    product.couponBadge?.title ?? '',
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
