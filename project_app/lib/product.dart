import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Back to shopping'),
        centerTitle: true,
        actions: [
          Icon(Icons.account_balance_rounded),
          SizedBox(
            width: 50,
          ),
        ],
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.pink,
              child: Image.asset(
                'Assets/images/images1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Some Text'),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                        Text(
                          'Outer Row',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                    // Container(
                    //   height: 50,
                    //   color: Colors.green,
                    //   child:
                    // ListView.separated(
                    //     separatorBuilder: (context, index) {
                    //       return const SizedBox(
                    //         width: 5,
                    //       );
                    //     },
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: 5,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return Icon(Icons.star);
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
