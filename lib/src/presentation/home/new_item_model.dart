class NewItemModel {
  final int id;
  final String image;
  final String title;
  final String price;
  bool isFav;

  NewItemModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    this.isFav = false,
  });
}

final List<NewItemModel> itemModel = [
  NewItemModel(
    id: 1,
    title: 'New Shirt',
    image:
        'https://img.freepik.com/free-photo/polo-shirt_1203-2613.jpg?ga=GA1.1.1045299636.1717934139&semt=ais_hybrid',
    price: '100 \$',
    isFav: false,
  ),
  NewItemModel(
    id: 2,
    title: 'New Shirt',
    image:
        'https://img.freepik.com/free-photo/shirt_1203-8185.jpg?ga=GA1.1.1045299636.1717934139&semt=ais_hybrid',
    price: '100 \$',
    isFav: false,
  ),
  NewItemModel(
    id: 3,
    title: 'New Shirt',
    image:
        'https://img.freepik.com/free-photo/shirt_1203-8194.jpg?ga=GA1.1.1045299636.1717934139&semt=ais_hybrid',
    price: '100 \$',
    isFav: false,
  ),
  NewItemModel(
    id: 4,
    title: 'New Shirt',
    image:
        'https://img.freepik.com/free-photo/man-wearing-blue-shirt-with-equal-sign-design_53876-125243.jpg?ga=GA1.1.1045299636.1717934139&semt=ais_hybrid',
    price: '100 \$',
    isFav: false,
  ),
  NewItemModel(
    id: 5,
    title: 'New Shirt',
    image:
        'https://img.freepik.com/free-photo/still-life-with-classic-shirts-hanger_23-2150828620.jpg?ga=GA1.1.1045299636.1717934139&semt=ais_hybrid',
    price: '100 \$',
    isFav: false,
  ),
];
