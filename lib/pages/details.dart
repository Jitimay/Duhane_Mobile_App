import 'package:duhane/widgets/widgets_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image.asset(
                "images/salad2.png",
              width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                fit: BoxFit.fill,
            ),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bujumbura Salad",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                    Text(
                      "Salad Boloniese",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    if(a>1){
                      --a;
                    };
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text(a.toString(), style: AppWidget.semiBoldTextFeildStyle(),),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue.",
              style: AppWidget.LightTextFeildStyle(),
              maxLines: 3,
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(width: 5),
                Text(
                  "30 min",
                  style: AppWidget.semiBoldTextFeildStyle(),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price", style: AppWidget.semiBoldTextFeildStyle(),
                      ),
                       Text("45,000 BIF", style: AppWidget.boldTextFeildStyle(),)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Poppins"
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            )
      ]
      ),
      )
    );
  }
}
