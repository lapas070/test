

// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shop_app/constants.dart';
// import 'package:shop_app/screens/details/components/login.dart';
// import 'package:shop_app/screens/home/components/body.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(),
//       body: Body(),
//     );
//   }

//   AppBar buildAppBar() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset("assets/icons/back.svg"),
//         onPressed: () {},
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: SvgPicture.asset(
//             "assets/icons/search.svg",
//             // By default our  icon color is white
//             color: kTextColor,
//           ),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: SvgPicture.asset(
//             "assets/icons/cart.svg",
//             // By default our  icon color is white
//             color: kTextColor,
//           ),
//           onPressed: () {},
//         ),

//         ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             textStyle: const TextStyle(fontSize: 20),
//           ),
//           onPressed: () {
//              Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) =>  LoginPage()),
//         );},
//           child:Text("login"),
//         ),
        
//         TextButton(
//           style: TextButton.styleFrom(
//             textStyle: const TextStyle(fontSize: 20),
//           ),
//           onPressed: () {},
//           child:Text("Register"),
//         ),
//         SizedBox(width: kDefaultPaddin / 2)
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/login.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/screens/details/components/register.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context), // Pass the context to buildAppBar
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) { // Update the function signature to accept context
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text("login"),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          },
          child: Text("Register"),
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
