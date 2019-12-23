import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		
		SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
			statusBarColor: Colors.transparent,
		));
		
		return Scaffold(
			backgroundColor: Colors.white,
			body: Column(
				children: <Widget>[
					Flexible(
						flex: 1,
						child: Stack(
							children: <Widget>[
								Positioned(
									bottom: 20.0,
									right: 16.0,
									left: 16.0,
									child: Column(
										children: <Widget>[
											Image.asset(
												"assets/images/splash_image.png",
												height: MediaQuery.of(context).size.height/3.2,
												fit: BoxFit.contain,
											),
											Padding(
												padding: EdgeInsets.symmetric(vertical: 16.0),
												child: Text(
													"Vegetable App",
													style: TextStyle(
														color: Colors.black,
														fontSize: 28.0,
														fontWeight: FontWeight.bold,
													),
												),
											),
											Text(
												"Get fresh vegetables at your home easily",
												style: TextStyle(
													color: Colors.grey,
													fontSize: 18.0,
													fontWeight: FontWeight.bold,
												),
											),
										],
									),
								),
							],
						),
					),
					Container(
						height: MediaQuery.of(context).size.height/3,
						decoration: BoxDecoration(
							color: Colors.blue,
						),
					),
				],
			),
		);
	}
}