
class GetImages {

  static String foodImage1 = getImagePath('food_image_1.jpg');
  static String foodImage2 = getImagePath('food_image_2.jpg');
  static String biryaniImage = getImagePath('biryani_image.jpg');
  static String foodImageYellow = getImagePath('food_image_yellow.jpg');
}

final String imageAssetRoot = 'assets/images/';

String getImagePath(String fileName) {
  return imageAssetRoot + fileName;
}

