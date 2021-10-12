import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_project/pages/cart_page.dart';
import 'package:shoes_project/pages/checkout_page.dart';
import 'package:shoes_project/pages/checkout_succes_page.dart';
import 'package:shoes_project/pages/edit_profile_page.dart';
import 'package:shoes_project/pages/home/main_page.dart';
import 'package:shoes_project/pages/sign_in_page.dart';
import 'package:shoes_project/pages/sign_up_page.dart';
import 'package:shoes_project/pages/splash_page.dart';
import 'package:shoes_project/provider/auth_provider.dart';
import 'package:shoes_project/provider/cart_provider.dart';
import 'package:shoes_project/provider/product_provider.dart';
import 'package:shoes_project/provider/transaction_provider.dart';
import 'package:shoes_project/provider/wishlist_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
