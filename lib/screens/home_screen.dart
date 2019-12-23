import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			body: Stack(
				children: <Widget>[
					Positioned(
						top: 0,
						child: Container(
							color: Colors.white,
							width: MediaQuery.of(context).size.width,
							height: MediaQuery.of(context).size.height/4,
							child: Stack(
								children: <Widget>[
									Align(
										alignment: Alignment.topLeft,
										child: ClipPath(
											clipper: TopLeftSplashScreenArc(),
											child: Container(
												height: MediaQuery.of(context).size.height/4,
												decoration: BoxDecoration(
													color: Color.fromRGBO(255, 209, 50, 1.0),
												),
											),
										),
									),
								],
							),
						),
					),
					Positioned(
						bottom: 0,
						child: Container(
							color: Colors.blue,
							width: MediaQuery.of(context).size.width,
							height: MediaQuery.of(context).size.height/4,
						),
					),
				],
			)
		);
	}
}

class TopLeftSplashScreenArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height);
		
		//move from bottom right to top right - height
		var firstControlPoint = Offset(size.width/2, size.height/3);
		var firstEndPoint = Offset(size.width, size.height/2);
		path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
			firstEndPoint.dx, firstEndPoint.dy);
		
		///move to top right
		path.lineTo(size.width, 0.0);
		
		path.close();
		
		return path;
	}
	
	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return true;
	}
}