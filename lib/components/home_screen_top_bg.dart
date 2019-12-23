import 'package:flutter/material.dart';

class HomeScreenTopBg extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		return Stack(
			children: <Widget>[
				Align(
					alignment: Alignment.topLeft,
					child: ClipPath(
						clipper: TopLeftArc(),
						child: Container(
							height: MediaQuery.of(context).size.height/3.0,
							decoration: BoxDecoration(
								color: Color.fromRGBO(255, 209, 50, 1.0),
							),
						),
					),
				),
				Align(
					alignment: Alignment.topRight,
					child: ClipPath(
						clipper: TopRightArc(),
						child: Container(
							height: MediaQuery.of(context).size.height/3.0,
							decoration: BoxDecoration(
								color: Color.fromRGBO(235, 74, 66, 1.0),
							),
						),
					),
				),
			],
		);
	}
}

class TopLeftArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height);
		
		//move from bottom right to top right - height
		var firstControlPoint = Offset(size.width/2.0, size.height/3.5);
		var firstEndPoint = Offset(size.width, size.height/3.5);
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

class TopRightArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height/3.5);
		
		//move to bottom right
		var firstControlPoint = Offset(size.width/2.0, size.height/3.5);
		var firstEndPoint = Offset(size.width, size.height);
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