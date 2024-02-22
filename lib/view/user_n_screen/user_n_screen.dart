import 'package:flutter/material.dart';
import 'package:netflix_app/utils/color_constants.dart';
import 'package:netflix_app/utils/db.dart';
import 'package:netflix_app/utils/image_constants.dart';
import 'package:netflix_app/view/bottom_screens/bottom_screen.dart';
// import 'package:netflix_app/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        title: SizedBox(
            width: 138,
            height: 38,
            child: Image.asset(ImageConstants.netflixPrimaryLogo)),
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        actions: [
          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset("assets/images/pen.png"),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: DummyDb.userNameImages.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => index <
                    DummyDb.userNameImages.length
                ? InkWell(
                    onTap: () {
                      // write code to navigate to home screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      DummyDb.userNameImages[index]["image"]!),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          DummyDb.userNameImages[index]["name"]!,
                          style: TextStyle(color: ColorConstants.mainWhite),
                        )
                      ],
                    ),
                  )
                : InkWell(
                    onTap: () {
                      print("add user button clicked");
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstants.addButtonImage),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Add",
                          style: TextStyle(color: ColorConstants.mainWhite),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}