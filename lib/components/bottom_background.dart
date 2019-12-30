import 'package:flutter/material.dart';

class BottomBackground extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		return Stack(
			children: <Widget>[
				Align(
					alignment: Alignment.bottomLeft,
					child: ClipPath(
						clipper: BottomLeftArc(),
						child: Container(
							decoration: BoxDecoration(
								color: Color.fromRGBO(255, 209, 50, 1.0),
							),
						),
					),
				),
				Align(
					alignment: Alignment.bottomRight,
					child: ClipPath(
						clipper: BottomRightArc(),
						child: Container(
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

class BottomLeftArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height);
		
		///move from bottom left to bottom right
		path.lineTo(size.width, size.height);
		
		///move from bottom right to top right
		path.lineTo(size.width, size.height/1.5);
		
		var firstControlPoint = Offset(size.width/2.0, size.height/1.5);
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

class BottomRightArc extends CustomClipper<Path>{
	
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(0.0, size.height/1.5);
		
		var firstControlPoint = Offset(size.width/2.0, size.height/1.5);
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