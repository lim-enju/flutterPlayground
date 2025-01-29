class Product {
  List<ProductItem>? products = [];
  Category? category;
  Type? type;

  Product({required this.products, required this.category, required this.type});

  Product.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductItem.fromJson(v));
      });
    }
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products?.map((v) => v.toJson()).toList();
    }
    if (category != null) {
      data['category'] = category?.toJson();
    }
    if (type != null) {
      data['type'] = type?.toJson();
    }
    return data;
  }
}

class ProductItem {
  int? id;
  bool? isScrap;
  bool? isWish;
  String? type;
  List<Badges?>? badges;
  Brand? brand;
  int? brandId;
  String? brandName;
  int? cost;
  CouponBadge? couponBadge;
  String? deliveryServiceCode;
  int? deliveryType;
  bool? freeDelivery;
  String? imageUrl;
  bool? isBespoke;
  bool? isBuyable;
  bool? isCheapestPrice;
  bool? isConsultable;
  bool? isDeliveryDateSpecified;
  bool? isDepartureToday;
  bool? isDiscontinued;
  bool? isDiscounted;
  bool? isFreeDelivery;
  bool? isHidden;
  bool? isOverseasPurchase;
  bool? isRemodel;
  bool? isRetailDelivery;
  bool? isSelling;
  bool? isSoldOut;
  bool? isSpecialPrice;
  bool? isThirdPartyLogistic;
  bool? lowestGuarantee;
  String? name;
  String? originalImageUrl;
  int? originalPrice;
  Price? price;
  String? rawImageUrl;
  String? resizedImageUrl;
  double? reviewAvg;
  int? reviewCount;
  int? scrapCount;
  bool? selling;
  int? sellingCost;
  int? sellingPrice;
  bool? soldOut;
  int? status;
  int? usedCardCount;
  int? userId;
  int? viewCount;
  int? weekRank;
  int? wishCount;

  ProductItem(
      {required this.id,
      required this.isScrap,
      required this.isWish,
      required this.type,
      required this.badges,
      required this.brand,
      required this.brandId,
      required this.brandName,
      required this.cost,
      required this.couponBadge,
      required this.deliveryServiceCode,
      required this.deliveryType,
      required this.freeDelivery,
      required this.imageUrl,
      required this.isBespoke,
      required this.isBuyable,
      required this.isCheapestPrice,
      required this.isConsultable,
      required this.isDeliveryDateSpecified,
      required this.isDepartureToday,
      required this.isDiscontinued,
      required this.isDiscounted,
      required this.isFreeDelivery,
      required this.isHidden,
      required this.isOverseasPurchase,
      required this.isRemodel,
      required this.isRetailDelivery,
      required this.isSelling,
      required this.isSoldOut,
      required this.isSpecialPrice,
      required this.isThirdPartyLogistic,
      required this.lowestGuarantee,
      required this.name,
      required this.originalImageUrl,
      required this.originalPrice,
      required this.price,
      required this.rawImageUrl,
      required this.resizedImageUrl,
      required this.reviewAvg,
      required this.reviewCount,
      required this.scrapCount,
      required this.selling,
      required this.sellingCost,
      required this.sellingPrice,
      required this.soldOut,
      required this.status,
      required this.usedCardCount,
      required this.userId,
      required this.viewCount,
      required this.weekRank,
      required this.wishCount});

  ProductItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isScrap = json['isScrap'];
    isWish = json['isWish'];
    type = json['type'];
    if (json['badges'] != null) {
      badges = [];
      json['badges'].forEach((v) {
        badges?.add(Badges.fromJson(v));
      });
    }
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    brandId = json['brandId'];
    brandName = json['brandName'];
    cost = json['cost'];
    couponBadge = json['couponBadge'] != null
        ? CouponBadge.fromJson(json['couponBadge'])
        : null;
    deliveryServiceCode = json['deliveryServiceCode'];
    deliveryType = json['deliveryType'];
    freeDelivery = json['freeDelivery'];
    imageUrl = json['imageUrl'];
    isBespoke = json['isBespoke'];
    isBuyable = json['isBuyable'];
    isCheapestPrice = json['isCheapestPrice'];
    isConsultable = json['isConsultable'];
    isDeliveryDateSpecified = json['isDeliveryDateSpecified'];
    isDepartureToday = json['isDepartureToday'];
    isDiscontinued = json['isDiscontinued'];
    isDiscounted = json['isDiscounted'];
    isFreeDelivery = json['isFreeDelivery'];
    isHidden = json['isHidden'];
    isOverseasPurchase = json['isOverseasPurchase'];
    isRemodel = json['isRemodel'];
    isRetailDelivery = json['isRetailDelivery'];
    isSelling = json['isSelling'];
    isSoldOut = json['isSoldOut'];
    isSpecialPrice = json['isSpecialPrice'];
    isThirdPartyLogistic = json['isThirdPartyLogistic'];
    lowestGuarantee = json['lowestGuarantee'];
    name = json['name'];
    originalImageUrl = json['originalImageUrl'];
    originalPrice = json['originalPrice'];
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    rawImageUrl = json['rawImageUrl'];
    resizedImageUrl = json['resizedImageUrl'];
    reviewAvg = json['reviewAvg'];
    reviewCount = json['reviewCount'];
    scrapCount = json['scrapCount'];
    selling = json['selling'];
    sellingCost = json['sellingCost'];
    sellingPrice = json['sellingPrice'];
    soldOut = json['soldOut'];
    status = json['status'];
    usedCardCount = json['usedCardCount'];
    userId = json['userId'];
    viewCount = json['viewCount'];
    weekRank = json['weekRank'];
    wishCount = json['wishCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['isScrap'] = isScrap;
    data['isWish'] = isWish;
    data['type'] = type;
    if (badges != null) {
      data['badges'] = badges?.map((v) => v?.toJson()).toList();
    }
    if (brand != null) {
      data['brand'] = brand?.toJson();
    }
    data['brandId'] = brandId;
    data['brandName'] = brandName;
    data['cost'] = cost;
    if (couponBadge != null) {
      data['couponBadge'] = couponBadge?.toJson();
    }
    data['deliveryServiceCode'] = deliveryServiceCode;
    data['deliveryType'] = deliveryType;
    data['freeDelivery'] = freeDelivery;
    data['imageUrl'] = imageUrl;
    data['isBespoke'] = isBespoke;
    data['isBuyable'] = isBuyable;
    data['isCheapestPrice'] = isCheapestPrice;
    data['isConsultable'] = isConsultable;
    data['isDeliveryDateSpecified'] = isDeliveryDateSpecified;
    data['isDepartureToday'] = isDepartureToday;
    data['isDiscontinued'] = isDiscontinued;
    data['isDiscounted'] = isDiscounted;
    data['isFreeDelivery'] = isFreeDelivery;
    data['isHidden'] = isHidden;
    data['isOverseasPurchase'] = isOverseasPurchase;
    data['isRemodel'] = isRemodel;
    data['isRetailDelivery'] = isRetailDelivery;
    data['isSelling'] = isSelling;
    data['isSoldOut'] = isSoldOut;
    data['isSpecialPrice'] = isSpecialPrice;
    data['isThirdPartyLogistic'] = isThirdPartyLogistic;
    data['lowestGuarantee'] = lowestGuarantee;
    data['name'] = name;
    data['originalImageUrl'] = originalImageUrl;
    data['originalPrice'] = originalPrice;
    if (price != null) {
      data['price'] = price?.toJson();
    }
    data['rawImageUrl'] = rawImageUrl;
    data['resizedImageUrl'] = resizedImageUrl;
    data['reviewAvg'] = reviewAvg;
    data['reviewCount'] = reviewCount;
    data['scrapCount'] = scrapCount;
    data['selling'] = selling;
    data['sellingCost'] = sellingCost;
    data['sellingPrice'] = sellingPrice;
    data['soldOut'] = soldOut;
    data['status'] = status;
    data['usedCardCount'] = usedCardCount;
    data['userId'] = userId;
    data['viewCount'] = viewCount;
    data['weekRank'] = weekRank;
    data['wishCount'] = wishCount;
    return data;
  }
}

class Badges {
  int? id;
  int? thumbnailBadgeId;
  int? position;
  ProductImage? image;

  Badges(
      {required this.id,
      required this.thumbnailBadgeId,
      required this.position,
      required this.image});

  Badges.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    thumbnailBadgeId = json['thumbnailBadgeId'];
    position = json['position'];
    image = json['image'] != null ? ProductImage.fromJson(json['image']) : null;
  }

  Map<String?, dynamic>? toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['thumbnailBadgeId'] = thumbnailBadgeId;
    data['position'] = position;
    if (image != null) {
      data['image'] = image?.toJson();
    }
    return data;
  }
}

class ProductImage {
  String? url;
  String? width;
  String? height;

  ProductImage({required this.url, required this.width, required this.height});

  ProductImage.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }
}

class Brand {
  int? id;
  String? name;

  Brand({required this.id, required this.name});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class CouponBadge {
  String? image;
  String? title;
  String? discountRatio;
  String? fixedDiscountAmount;

  CouponBadge(
      {required this.image,
      required this.title,
      required this.discountRatio,
      required this.fixedDiscountAmount});

  CouponBadge.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    discountRatio = json['discountRatio'];
    fixedDiscountAmount = json['fixedDiscountAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;
    data['discountRatio'] = discountRatio;
    data['fixedDiscountAmount'] = fixedDiscountAmount;
    return data;
  }
}

class Price {
  int? goodsId;
  int? regularPrice;
  int? salePrice;
  int? sellingPrice;
  int? referencePrice;
  List<DiscountPlans>? discountPlans;

  Price(
      {this.goodsId,
      this.regularPrice,
      this.salePrice,
      this.sellingPrice,
      this.referencePrice,
      this.discountPlans});

  Price.fromJson(Map<String, dynamic> json) {
    goodsId = json['goodsId'];
    regularPrice = json['regularPrice'];
    salePrice = json['salePrice'];
    sellingPrice = json['sellingPrice'];
    referencePrice = json['referencePrice'];
    if (json['discountPlans'] != null) {
      discountPlans = [];
      json['discountPlans'].forEach((v) {
        discountPlans?.add(DiscountPlans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['goodsId'] = goodsId;
    data['regularPrice'] = regularPrice;
    data['salePrice'] = salePrice;
    data['sellingPrice'] = sellingPrice;
    data['referencePrice'] = referencePrice;
    if (discountPlans != null) {
      data['discountPlans'] = discountPlans?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DiscountPlans {
  String? planType;
  String? planId;
  int? discountAmount;

  DiscountPlans({this.planType, this.planId, this.discountAmount});

  DiscountPlans.fromJson(Map<String, dynamic> json) {
    planType = json['planType'];
    planId = json['planId'];
    discountAmount = json['discountAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['planType'] = planType;
    data['planId'] = planId;
    data['discountAmount'] = discountAmount;
    return data;
  }
}

class Category {
  Current? current;
  List<Categories>? categories;

  Category({this.current, this.categories});

  Category.fromJson(Map<String, dynamic> json) {
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (current != null) {
      data['current'] = current?.toJson();
    }
    if (categories != null) {
      data['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Current {
  String? id;
  String? title;

  Current({this.id, this.title});

  Current.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}

class Categories {
  int? id;
  String? title;
  String? hash;
  String? imageUrl;

  Categories({this.id, this.title, this.hash, this.imageUrl});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    hash = json['hash'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['hash'] = hash;
    data['imageUrl'] = imageUrl;
    return data;
  }
}

class Type {
  String? current;
  List<Types>? types;

  Type({this.current, this.types});

  Type.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    if (json['types'] != null) {
      types = [];
      json['types'].forEach((v) {
        types?.add(Types.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current'] = current;
    if (types != null) {
      data['types'] = types?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Types {
  String? name;
  String? code;

  Types({this.name, this.code});

  Types.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    return data;
  }
}
