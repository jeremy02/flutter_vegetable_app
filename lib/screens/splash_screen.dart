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
													color: Colors.grey.shade600,
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
					bottomPart(context),
				],
			),
		);
	}
	
	Widget bottomPart(BuildContext context) {
		return Container(
			color: Colors.white,
			width: double.infinity,
			height: MediaQuery.of(context).size.height/3,
			child: Stack(
				children: <Widget>[
					Align(
						alignment: Alignment.bottomLeft,
						child: ClipPath(
							clipper: LeftSplashScreenArc(),
							child: Container(
								height: MediaQuery.of(context).size.height/3,
								decoration: BoxDecoration(
									color: Color.fromRGBO(255, 209, 50, 1.0),
								),
							),
						),
					),
					Align(
						alignment: Alignment.bottomRight,
						child: ClipPath(
							clipper: RightSplashScreenArc(),
							child: Container(
								height: MediaQuery.of(context).size.height/3,
								decoration: BoxDecoration(
									color: Color.fromRGBO(235, 74, 66, 1.0),
								),
							),
						),
					),
					nextButton(),
				],
			),
		);
	}

    Widget nextButton() {
		return Align(
			alignment: Alignment.center,
			child: Material(
				color: Color.fromRGBO(134, 189, 15, 1.0),
				shape: CircleBorder(),
				clipBehavior: Clip.hardEdge,
				child: InkWell(
					splashColor: Colors.black.withOpacity(0.3),
					child: Container(
						height: 75,
						width: 75,
						decoration: BoxDecoration(
							shape: BoxShape.circle,
						),
						child: Icon(
							Icons.arrow_forward,
							size: 36,
							color: Colors.white,
						),
					),
					onTap: (){
					
					},
				),
			)
		);
    }
}

class LeftSplashScreenArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height);
		
		///move from bottom left to bottom right
		path.lineTo(size.width, size.height);
		
		///move from bottom right to top right
		path.lineTo(size.width, size.height/1.4);
		
		var firstControlPoint = Offset(size.width/2, size.height/1.4);
		var firstEndPoint = Offset(0.0, 0.0);
		path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
			firstEndPoint.dx, firstEndPoint.dy);
		
		path.close();
		
		return path;
	}
	
	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return true;
	}
}

class RightSplashScreenArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height/1.4);
		
		var firstControlPoint = Offset(size.width/2, size.height/1.4);
		var firstEndPoint = Offset(size.width, 0.0);
		path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
			firstEndPoint.dx, firstEndPoint.dy);
		
		///move from bottom left to bottom right
		path.lineTo(size.width, size.height);
		
		///move from bottom right to top left
		path.lineTo(0.0, size.height);
		
		path.close();
		
		return path;
	}
	
	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return true;
	}
}