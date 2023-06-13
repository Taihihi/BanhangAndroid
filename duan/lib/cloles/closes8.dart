import 'package:flutter/material.dart';
import 'package:duan/json/constant.dart';
import 'package:duan/theme/colors.dart';
import 'package:duan/pages/home_page.dart';

class Cloles8 extends StatefulWidget {
  @override
  State<Cloles8> createState() => _HomePageState();
}

class _HomePageState extends State<Cloles8> {
  int quantity = 1;
  void _decreaseQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      appBar: AppBar(
        title: const Text('Cloles'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
                (route) => false);
          },
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Column(
                children: List.generate(recently4.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(recently4[index]['imgUrl']),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              );
            })),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 0,
        ),
        Column(
            children: List.generate(recently4.length, (index) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recently4[index]['title'],
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    'Price: ${recently4[index]['price']} VND',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      Text(
                        'Quantity:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: _decreaseQuantity,
                      ),
                      Text(
                        quantity.toString(),
                        style: TextStyle(fontSize: 14.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: _increaseQuantity,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      Text(
                        'Rating: ${recently4[index]['rating']}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '(${recently4[index]['reviews']} reviews)',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    'Description:',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    recently4[index]['description'],
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),

                // Text(
                //   recently4[index]['description'],
                //   style: TextStyle(fontSize: 16.0),
                // ),
                SizedBox(height: 16.0),
                SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    child: Text('Add to Cart'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          );
        })),
      ],
    );
  }
}
