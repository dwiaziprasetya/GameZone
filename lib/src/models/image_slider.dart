class ImageSlider {
  String title;
  String imageAsset;

  ImageSlider({
    required this.title,
    required this.imageAsset,
  });
}

var imageSliderData = [
  ImageSlider(
    title: 'FC 25',
    imageAsset: 'assets/images/image_slider_fc_25.jpg',
  ),
  ImageSlider(
    title: 'Black Myth Wukong',
    imageAsset: 'assets/images/image_slider_friday_the_13_th.jpg',
  ),
  ImageSlider(
    title: 'God of War',
    imageAsset: 'assets/images/image_slider_god_of_war.jpg',
  ),
];
