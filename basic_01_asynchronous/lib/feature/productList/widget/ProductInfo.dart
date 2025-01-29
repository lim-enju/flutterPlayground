import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '헬로우슬립',
            style: TextStyle(fontSize: 10),
          ),
          Text(
            '[10%쿠폰] NEW부드러운 카스테라 워싱 향균 옥수수솜 간절기&사계절&한파용 차렵이불세트',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          Row(
            children: [
              Text(
                '37%',
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
                '35,900',
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
                '4.8',
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
                '45,130',
                style: TextStyle(
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
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
          SizedBox(
            height: 3,
          ),
          Container(
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
                Icon(
                  size: 10,
                  Icons.discount,
                  color: Colors.red,
                ),
                Text(
                  '최대 10% 쿠폰',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
