import 'dart:convert';

PropertyModel propertyModelFromJson(String str) => PropertyModel.fromJson(json.decode(str));

String propertyModelToJson(PropertyModel data) => json.encode(data.toJson());

class PropertyModel {
  PropertyModel({
    required this.status,
    required this.recordsCount,
    required this.properties,
  });

  int status;
  int recordsCount;
  List<Property> properties;

  factory PropertyModel.fromJson(Map<String, dynamic> json) => PropertyModel(
        status: json["status"],
        recordsCount: json["recordsCount"],
        properties: List<Property>.from(json["properties"].map((x) => Property.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "recordsCount": recordsCount,
        "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
      };
}

class Property {
  Property({
    required this.propertyServiceId,
    required this.id,
    required this.propertyTitle,
    required this.slug,
    required this.isFeatured,
    required this.publishedAt,
    required this.publishedAtSimple,
    required this.agencyId,
    required this.agencyName,
    required this.agencyTypeId,
    required this.agencyCode,
    required this.agencyTitle,
    required this.agencyTypeName,
    required this.agencyLogoUrl,
    required this.propertyTypeId,
    required this.propertyTypeName,
    required this.propertyTypeParentId,
    required this.propertyTypeParentName,
    required this.hasVideo,
    required this.hasPictures,
    required this.thumbnailUrl,
    required this.youtubeVideoId,
    required this.price,
    required this.currency,
    required this.isMapApproximate,
    required this.longitude,
    required this.latitude,
    required this.hasVirtualTour,
    required this.virtualTourUrl,
    required this.hasFloorPlans,
    required this.isLiked,
    required this.facadeDirId,
    required this.facadeDirName,
    required this.positionId,
    required this.positionName,
    required this.positionIcon,
    required this.constructionDate,
    required this.width,
    required this.height,
    required this.streetWidth,
    required this.isUseLimited,
    required this.isHavingRightsObligations,
    required this.isHavingInfoAffectingValue,
    required this.authCode,
    required this.amenities,
    required this.features,
  });

  int propertyServiceId;
  int id;
  String propertyTitle;
  String slug;
  bool isFeatured;
  DateTime publishedAt;
  String publishedAtSimple;
  int agencyId;
  String agencyName;
  int agencyTypeId;
  String agencyCode;
  dynamic agencyTitle;
  String agencyTypeName;
  dynamic agencyLogoUrl;
  int propertyTypeId;
  String propertyTypeName;
  int propertyTypeParentId;
  String propertyTypeParentName;
  bool hasVideo;
  bool hasPictures;
  String thumbnailUrl;
  String youtubeVideoId;
  int price;
  String currency;
  bool isMapApproximate;
  String longitude;
  String latitude;
  bool hasVirtualTour;
  dynamic virtualTourUrl;
  bool hasFloorPlans;
  bool isLiked;
  int facadeDirId;
  String facadeDirName;
  int positionId;
  String positionName;
  String positionIcon;
  DateTime constructionDate;
  int width;
  int height;
  int streetWidth;
  bool isUseLimited;
  bool isHavingRightsObligations;
  bool isHavingInfoAffectingValue;
  String authCode;
  List<Amenity> amenities;
  List<Amenity> features;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        propertyServiceId: json["propertyServiceId"],
        id: json["id"],
        propertyTitle: json["propertyTitle"],
        slug: json["slug"],
        isFeatured: json["isFeatured"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        publishedAtSimple: json["publishedAtSimple"],
        agencyId: json["agencyId"],
        agencyName: json["agencyName"],
        agencyTypeId: json["agencyTypeId"],
        agencyCode: json["agencyCode"],
        agencyTitle: json["agencyTitle"],
        agencyTypeName: json["agencyTypeName"],
        agencyLogoUrl: json["agencyLogoUrl"],
        propertyTypeId: json["propertyTypeId"],
        propertyTypeName: json["propertyTypeName"],
        propertyTypeParentId: json["propertyTypeParentId"],
        propertyTypeParentName: json["propertyTypeParentName"],
        hasVideo: json["hasVideo"],
        hasPictures: json["hasPictures"],
        thumbnailUrl: json["thumbnailUrl"],
        youtubeVideoId: json["youtubeVideoId"],
        price: json["price"],
        currency: json["currency"],
        isMapApproximate: json["isMapApproximate"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        hasVirtualTour: json["hasVirtualTour"],
        virtualTourUrl: json["virtualTourUrl"],
        hasFloorPlans: json["hasFloorPlans"],
        isLiked: json["isLiked"],
        facadeDirId: json["facadeDirId"],
        facadeDirName: json["facadeDirName"],
        positionId: json["positionId"],
        positionName: json["positionName"],
        positionIcon: json["positionIcon"],
        constructionDate: DateTime.parse(json["constructionDate"]),
        width: json["width"],
        height: json["height"],
        streetWidth: json["streetWidth"],
        isUseLimited: json["isUseLimited"],
        isHavingRightsObligations: json["isHavingRightsObligations"],
        isHavingInfoAffectingValue: json["isHavingInfoAffectingValue"],
        authCode: json["authCode"],
        amenities: List<Amenity>.from(json["amenities"].map((x) => Amenity.fromJson(x))),
        features: List<Amenity>.from(json["features"].map((x) => Amenity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "propertyServiceId": propertyServiceId,
        "id": id,
        "propertyTitle": propertyTitle,
        "slug": slug,
        "isFeatured": isFeatured,
        "publishedAt": publishedAt.toIso8601String(),
        "publishedAtSimple": publishedAtSimple,
        "agencyId": agencyId,
        "agencyName": agencyName,
        "agencyTypeId": agencyTypeId,
        "agencyCode": agencyCode,
        "agencyTitle": agencyTitle,
        "agencyTypeName": agencyTypeName,
        "agencyLogoUrl": agencyLogoUrl,
        "propertyTypeId": propertyTypeId,
        "propertyTypeName": propertyTypeName,
        "propertyTypeParentId": propertyTypeParentId,
        "propertyTypeParentName": propertyTypeParentName,
        "hasVideo": hasVideo,
        "hasPictures": hasPictures,
        "thumbnailUrl": thumbnailUrl,
        "youtubeVideoId": youtubeVideoId,
        "price": price,
        "currency": currency,
        "isMapApproximate": isMapApproximate,
        "longitude": longitude,
        "latitude": latitude,
        "hasVirtualTour": hasVirtualTour,
        "virtualTourUrl": virtualTourUrl,
        "hasFloorPlans": hasFloorPlans,
        "isLiked": isLiked,
        "facadeDirId": facadeDirId,
        "facadeDirName": facadeDirName,
        "positionId": positionId,
        "positionName": positionName,
        "positionIcon": positionIcon,
        "constructionDate":
            "${constructionDate.year.toString().padLeft(4, '0')}-${constructionDate.month.toString().padLeft(2, '0')}-${constructionDate.day.toString().padLeft(2, '0')}",
        "width": width,
        "height": height,
        "streetWidth": streetWidth,
        "isUseLimited": isUseLimited,
        "isHavingRightsObligations": isHavingRightsObligations,
        "isHavingInfoAffectingValue": isHavingInfoAffectingValue,
        "authCode": authCode,
        "amenities": List<dynamic>.from(amenities.map((x) => x.toJson())),
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
      };
}

class Amenity {
  Amenity({
    required this.icon,
    required this.id,
    required this.title,
    required this.value,
  });

  String icon;
  int id;
  String title;
  dynamic value;

  factory Amenity.fromJson(Map<String, dynamic> json) => Amenity(
        icon: json["icon"],
        id: json["id"],
        title: json["title"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "id": id,
        "title": title,
        "value": value,
      };
}
