
import 'package:flutter/material.dart';

/// Food List View
class FoodList extends StatelessWidget {
  /// Food List View
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(

    floatingActionButton: FloatingActionButton.small(
      backgroundColor:  Colors.white,
      onPressed: () {},
      child: const Icon(
        Icons.navigate_before,
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    body: Stack(
      children: <Widget>[
        Container(
          height: (MediaQuery.of(context).size.height) / 2,
          child: Center(
            child: Image.asset(
             "assets/images/foodapp.png",
              fit: BoxFit.fill,height:MediaQuery.of(context).size.height ,
            ), // Replace with your image asset path
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 350),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color:  Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        right: 50,
                        top: 25,
                      ),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Roasted salmon with vegetable',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,

                          ),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:10,
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.star,
                              color:  Colors.red,
                            ),
                            Text(
                              '5.0(6)',
                              style: TextStyle(
                              fontSize: 20
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          '325 calories',
                          style: TextStyle(
                            color:  Colors.grey,fontSize: 20
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.alarm,
                                color:  Colors.red,
                                size: 20,
                              ),
                              Text(
                                '45 Mins',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color:  Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Details',
                          style: TextStyle(

                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'The dbhdk khfmd  jdf  djfb ljjsk skbds bsk'
                              'dbsdlsndlsn dlknsd  lsdn,s ldlns  lsndsd '
                              'sbdskdb;lmsd.The dbhdk khfmd  jdf  djfb ljjsk skbds bsk'
                              'dbsdlsndlsn dlknsd  lsdn,s ldlns  lsndsd '
                              'sbdskdb;lmsd.The dbhdk khfmd  jdf  djfb ljjsk skbds bsk'
                              'dbsdlsndlsn dlknsd  lsdn,s ldlns  lsndsd '
                              'sbdskdb;lmsd.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                           
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              const double s = 20;
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: s,
                                ),
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Icon(
                                  Icons.shopping_cart,
                                  color:  Colors.red,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      // color: Colors.red,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,

                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color:  Colors.red,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                '45',
                                style: TextStyle(
                                  color:  Colors.red,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(width: 10),
                              CircleAvatar(
                                radius: 15,


                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color:  Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:  Colors.green,
                            ),
                            child: const Text(
                              'Order for \$25.670',
                              style: TextStyle(
                                color:  Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(top: 350),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:  Colors.green,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.heart_broken_outlined,
                      color:  Colors.red,
                    ),
                  ),
                ),
              ),
              right: 10,
              top: -25,
            ),
          ],
        ),
      ],
    ),
  );
}