const String APP_TITLE = 'SHOP UI';

const String profileUrl =
    // "https://images.unsplash.com/photo-1616597082843-de7ce757d548?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
    // "https://static.vecteezy.com/system/resources/previews/000/645/833/original/vector-group-people-icon.jpg"
    'assets/images/2.wedp';

const List products = [
  {
    'id': '1',
    'name': 'T-Shirt',
    'image': 'assets/images/aophong.webp',
    'price': 29.99,
    'description': 'shirt',
  },
];

const List notification = [
  {
    'id': '1',
    'name': 'T-Shirt',
    'description': 'shirt5',
  },
  {
    'id': '2',
    'name': 'T-Shirt',
    'description': 'shirt4',
  },
  {
    'id': '3',
    'name': 'T-Shirt',
    'description': 'shirt3',
  },
  {
    'id': '4',
    'name': 'T-Shirt',
    'description': 'shirt2',
  },
  {
    'id': '5',
    'name': 'T-Shirt',
    'description': 'shirt1',
  },
];

const List categories = [
  {
    'title': 'Áo Xanh Nam',
    'price': '100.000 VNĐ',
    'imgUrl': 'assets/images/aoxanhnam.webp',
  },
  {
    'title': 'Áo Phông Nam',
    'price': '80.000 VNĐ',
    'imgUrl': 'assets/images/aophong.webp',
  },
  {
    'title': 'Quần Jean Dài',
    'price': '150.000 VNĐ',
    'imgUrl': 'assets/images/jeandai.webp',
  },
  {
    'title': 'Full Bộ Nữ',
    'price': '70.000 VNĐ',
    'imgUrl': 'assets/images/fullnu.webp',
  },
  {
    'title': 'Quần jean',
    'price': '150.000 VNĐ',
    'imgUrl': 'assets/images/jean.webp',
  },
];

const List recommends = [
  {
    'title': 'Đồ Mặc Nhà Bé Trai',
    'price': '90.000',
    'imgUrl': 'assets/images/3.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.0',
    'reviews': '6',
  },
];
const List recommends2 = [
  {
    'title': 'Quần Jeans Nam',
    'price': '110.000',
    'imgUrl': 'assets/images/jean.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.1',
    'reviews': '7',
  },
];
const List recommends3 = [
  {
    'title': 'Bộ Mặc Nhà Nữ',
    'price': '90.000',
    'imgUrl': 'assets/images/nu.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.2',
    'reviews': '8',
  },
];
const List recommends4 = [
  {
    'title': 'Quần Soóc Bé Trai',
    'price': '80.000',
    'imgUrl': 'assets/images/sooc.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.3',
    'reviews': '9',
  },
];
const List recommends5 = [
  {
    'title': 'Quần Soóc Jeans Nữ',
    'price': '100.000',
    'imgUrl': 'assets/images/jeansooc.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.4',
    'reviews': '10',
  }
];

const List recently = [
  {
    'title': 'Quần Khaki Nam',
    'price': '150.000',
    'imgUrl': 'assets/images/kaki.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.7',
    'reviews': '6',
  },
];
const List recently2 = [
  {
    'title': 'Quần Jeans Nữ',
    'price': '90.000',
    'imgUrl': 'assets/images/jeandai.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.0',
    'reviews': '6',
  },
];
const List recently3 = [
  {
    'title': 'Áo Polo Nam',
    'price': '80.000',
    'imgUrl': 'assets/images/aophong.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.6',
    'reviews': '12',
  },
];
const List recently4 = [
  {
    'title': 'Áo Phông Nữ In Nhỏ',
    'price': '70.000',
    'imgUrl': 'assets/images/fullnu.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.3',
    'reviews': '9',
  },
];
const List recently5 = [
  {
    'title': 'Áo Xanh Nam',
    'price': '100.000',
    'imgUrl': 'assets/images/aoxanhnam.webp',
    'description':
        'This is a sample description of Product 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'rating': '4.0',
    'reviews': '8',
  }
];

List storeList = [
  {
    "img": 'assets/images/aoxanhnam.webp',
    "name": "Les Halles, Paris",
    "open": 0,
    'title': 'Áo Xanh Nam',
    'price': '100.000',
  },
];

List storeList2 = [
  {
    "img": "assets/images/fullnu.webp",
    "name": "Les Halles, Paris",
    'title': 'Áo Phông Nữ In Nhỏ',
    'price': '70.000',
  },
];

List storeList3 = [
  {
    "img": "assets/images/jean.webp",
    "name": "Les Halles, Paris",
    'title': 'Quần Jeans',
    'price': '150.000',
  },
];

List storeList4 = [
  {
    "img": "assets/images/aophong.webp",
    "name": "Les Halles, Paris",
    'title': 'Áo Polo Nam',
    'price': '80.000',
  },
];

List storeList5 = [
  {
    "img": "assets/images/jeandai.webp",
    "name": "Les Halles, Paris",
    'title': 'Quan Jean Dai',
    'price': '150.000',
  },
];

const List storeList6 = [
  {
    'title': 'Quần Khaki Nam',
    'price': '150.000',
    "name": "Les Halles, Paris",
    'img': 'assets/images/kaki.webp',
  },
];

// List<Products> products = [
//   Products(
//     idNotification: '1',
//     nameNotification: 'Áo Xanh Nam',
//     descriptionNotification: 'This is a sample',
//   ),
//   Products(
//     idNotification: '2',
//     nameNotification: 'Áo Phông Nữ In Nhỏ',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '3',
//     nameNotification: 'Quần Áo Jeans',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '4',
//     nameNotification: 'Áo Polo Nam',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '5',
//     nameNotification: 'Quan Jean Dai',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '6',
//     nameNotification: 'Quần Khaki Nam',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '7',
//     nameNotification: 'Đồ Mặc Nhà Bé Trai',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '8',
//     nameNotification: 'Quần Jeans Nam',
//     descriptionNotification: 'This is a sample',
//   ),
//   Products(
//     idNotification: '9',
//     nameNotification: 'Bộ Mặc Nhà Nữ',
//     descriptionNotification: 'This is a sample ',
//   ),
//   Products(
//     idNotification: '10',
//     nameNotification: 'Quần Soóc Bé Trai',
//     descriptionNotification: 'This is a sample ',
//   ),
// ];
