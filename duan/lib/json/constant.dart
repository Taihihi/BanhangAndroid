// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String APP_TITLE = 'SHOP UI';
// const String homeImg =
//     // 'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';
//     // "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
//     'assets/images/1.avif';

const String profileUrl =
    // "https://images.unsplash.com/photo-1616597082843-de7ce757d548?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
    // "https://static.vecteezy.com/system/resources/previews/000/645/833/original/vector-group-people-icon.jpg"
    'assets/images/2.wedp';
// const List<Map<String, Object>> categories = [

const List products = [
  {
    'id': '1',
    'name': 'T-Shirt',
    'image': 'assets/images/aophong.webp',
    'price': 29.99,
    'description': 'shirt',
  },
];

const List categories = [
  // {
  //   'title': 'New In',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  // },
  // {
  //   'title': 'Clothing',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1495121605193-b116b5b9c5fe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  // },
  // {
  //   'title': 'Men',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  // },
  // {
  //   'title': 'Women',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1485968579580-b6d095142e6e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  // },
  // {
  //   'title': 'Couple',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1550614000-4895a10e1bfd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  // },
  // {
  //   'title': '100.000 VNĐ',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/8/t/8ts23s014-sg113-2-thumb.webp',
  // },
  // {
  //   'title': '80.000 VNĐ',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/8/t/8tp23s001-sb194-2.webp',
  // },
  // {
  //   'title': '150.000 VNĐ',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1544642899-f0d6e5f6ed6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  // },
  // {
  //   'title': '70.000 VNĐ',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/6/t/6ts23s021-sp235-2-thumb.webp',
  // },
  // {
  //   'title': '150.000 VNĐ',
  //   'imgUrl':
  //       'https://images.unsplash.com/photo-1560891958-68bb1fe7fb78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  // },

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

// const List<Map<String, Object>> recommends = [
const List recommends = [
  // {
  //   'title': 'Đồ Mặc Nhà Bé Trai',
  //   'price': '90.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/2/l/2ls23s012-sg067-120-1-ghep.webp',
  // },
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
  // {
  //   'title': 'Quần Jeans Nam',
  //   'price': '110.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/8/b/8bj23a003-sj777-31-1.webp',
  // },
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
  // {
  //   'title': 'Bộ Mặc Nhà Nữ',
  //   'price': '90.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/6/l/6ls23s004-fn021-m-1-ghep.webp',
  // },
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
  // {
  //   'title': 'Quần Soóc Bé Trai',
  //   'price': '80.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/2/b/2bs23c018-se002-110-1_1.webp',
  // },
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
  // {
  //   'title': 'Quần Soóc Jeans Nữ',
  //   'price': '100.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/6/b/6bs23s005-sj797-27-1.webp',
  // }
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

// const List<Map<String, Object>> recently = [
const List recently = [
  // {
  //   'title': 'Quần Khaki Nam',
  //   'price': '150.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/8/b/8bk23a001-sb229-2-thumb.webp',
  // },
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
  // {
  //   'title': 'Quần Jeans Nữ',
  //   'price': '90.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/6/b/6bj23s001-sj813-2-thumb.webp',
  // },
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
  // {
  //   'title': 'Áo Polo Nam',
  //   'price': '80.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/8/t/8tp23s001-sb194-2.webp',
  // },
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
  // {
  //   'title': 'Áo Phông Nữ In Nhỏ',
  //   'price': '70.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/6/t/6ts23s021-sp235-2-thumb.webp',
  // },
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
  // {
  //   'title': 'Áo Xanh Nam',
  //   'price': '100.000',
  //   'imgUrl':
  //       'https://canifa.com/img/486/733/resize/8/t/8ts23s014-sg113-2-thumb.webp',
  // }
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
  // {
  //   "img":
  //       'https://canifa.com/img/486/733/resize/8/t/8ts23s014-sg113-2-thumb.webp',
  //   "name": "Les Halles, Paris",
  //   "open": 0,
  //   'title': 'Áo Xanh Nam',
  //   'price': '100.000',
  // },
  {
    "img": 'assets/images/aoxanhnam.webp',
    "name": "Les Halles, Paris",
    "open": 0,
    'title': 'Áo Xanh Nam',
    'price': '100.000',
  },
];

List storeList2 = [
  // {
  //   "img":
  //       "https://canifa.com/img/486/733/resize/6/t/6ts23s021-sp235-2-thumb.webp",
  //   "name": "Les Halles, Paris",
  //   'title': 'Áo Phông Nữ In Nhỏ',
  //   'price': '70.000',
  // },
  {
    "img": "assets/images/fullnu.webp",
    "name": "Les Halles, Paris",
    'title': 'Áo Phông Nữ In Nhỏ',
    'price': '70.000',
  },
];

List storeList3 = [
  // {
  //   "img":
  //       "https://images.unsplash.com/photo-1544642899-f0d6e5f6ed6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  //   "name": "Les Halles, Paris",
  //   'title': 'Quần Áo Jeans',
  //   'price': '150.000',
  // },
  {
    "img": "assets/images/jean.webp",
    "name": "Les Halles, Paris",
    'title': 'Quần Jeans',
    'price': '150.000',
  },
];

List storeList4 = [
  // {
  //   "img": "https://canifa.com/img/486/733/resize/8/t/8tp23s001-sb194-2.webp",
  //   "name": "Les Halles, Paris",
  //   'title': 'Áo Polo Nam',
  //   'price': '80.000',
  // },
  {
    "img": "assets/images/aophong.webp",
    "name": "Les Halles, Paris",
    'title': 'Áo Polo Nam',
    'price': '80.000',
  },
];

List storeList5 = [
  // {
  //   "img":
  //       "https://images.unsplash.com/photo-1560891958-68bb1fe7fb78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  //   "name": "Les Halles, Paris",
  //   'title': 'Túi Xách Xanh',
  //   'price': '150.000',
  // },
  {
    "img": "assets/images/jeandai.webp",
    "name": "Les Halles, Paris",
    'title': 'Quan Jean Dai',
    'price': '150.000',
  },
];

const List storeList6 = [
  // {
  //   'title': 'Quần Khaki Nam',
  //   'price': '150.000',
  //   "name": "Les Halles, Paris",
  //   'img':
  //       'https://canifa.com/img/486/733/resize/8/b/8bk23a001-sb229-2-thumb.webp',
  // },
  {
    'title': 'Quần Khaki Nam',
    'price': '150.000',
    "name": "Les Halles, Paris",
    'img': 'assets/images/kaki.webp',
  },
];
