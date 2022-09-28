class onboading_content{
  String image;
  String title;
  String disciption;

  onboading_content({required this.image,required this.title,required this.disciption});
}

List<onboading_content> contents=[
  onboading_content(image: 'images/fast_food.png', title: 'Order your food for home delivery', disciption:'Order your food for home delivery'),
  onboading_content(image: 'images/delivery_bike.png', title: 'Fast delivery for the home', disciption:'Order your food for home delivery'),
  onboading_content(image: 'images/food.png', title: 'Deliver the popular foods', disciption:'Order your food for home delivery'),
];