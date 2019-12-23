import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
		
		double childAspectRatio = MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.4);
		
		return Stack(
				fit: StackFit.expand,
				children: <Widget>[
					Column(
						children: <Widget>[
							Padding(
								padding: EdgeInsets.symmetric(
									vertical: MediaQuery.of(context).size.height/12,
								),
								child: Text(
									"Vegetable",
									style: TextStyle(
										fontSize: 20.0,
										color: Colors.white,
										fontWeight: FontWeight.bold,
										letterSpacing: 1.2,
									),
								),
							),
							Flexible(
								flex: 1,
								child: Container(
									margin: EdgeInsets.only(
										bottom: 16,
										right: 16,
										left: 16,
									),
									child: GridView.builder(
										physics: AlwaysScrollableScrollPhysics(),
										shrinkWrap: true,
										gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
											crossAxisCount: 2,
											crossAxisSpacing: 0.0,
											mainAxisSpacing: 0.0,
											childAspectRatio: childAspectRatio,
										),
										itemCount: 10,
										itemBuilder: (context, index) {
											return Padding(
												padding: EdgeInsets.only(
													top: 0.0,
													bottom: 12.0,
													left: index % 2 == 0 ? 0.0 : 8.0,
												),
												child: Card(
													shape: RoundedRectangleBorder(
														borderRadius: BorderRadius.all(Radius.circular(16.0)),
													),
													child: InkWell(
														borderRadius: BorderRadius.all(Radius.circular(16)),
														onTap: (){
														
														},
														child: Stack(
															children: <Widget>[
																  buildAddToCartIcon(childAspectRatio),
															],
														),
													),
													elevation: 12.0,
													color: Colors.white,
												),
											);
										},
									),
								),
							),
						],
					)
				],
			);
	}

    Widget buildAddToCartIcon(double childAspectRatio) {
		return Align(
			alignment: Alignment.bottomRight,
			child: Container(
				width: childAspectRatio*100,
				height: childAspectRatio*100,
				decoration: BoxDecoration(
					color: Colors.transparent,
					borderRadius: BorderRadius.only(
						bottomRight: Radius.circular(
							16.0,
						),
					),
				),
				child: ClipPath(
					clipper: IconButtonWave(),
					child: Container(
						decoration: BoxDecoration(
							color: Color.fromRGBO(136, 187, 19, 1.0),
							borderRadius: BorderRadius.only(
								bottomRight: Radius.circular(
									16.0,
								),
							),
						),
						child: Stack(
							children: <Widget>[
								Positioned(
									bottom: 4.0,
									right: 8.0,
									child: Icon(
										Icons.shopping_cart,
										size: childAspectRatio*36,
										color: Colors.white,
									),
								),
							],
						),
					),
				),
			),
		);
    }
}


class IconButtonWave extends CustomClipper<Path>{
	@override
	Path getClip(Size size) {
		Path path = new Path();
		
		path.lineTo(size.width*0.25, size.height);
		
		var firstControlPoint = Offset(size.width*0.30, size.height*0.60);
		var firstEndPoint = Offset(size.width*0.50, size.height*0.56);
		path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
			firstEndPoint.dx, firstEndPoint.dy);
		
		var secondControlPoint = Offset(size.width*0.68, size.height*0.52);
		var secondEndPoint = Offset(size.width*0.76, size.height*0.42);
		path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
			secondEndPoint.dx, secondEndPoint.dy);
		
		var thirdControlPoint = Offset(size.width*0.80, size.height*0.36);
		var thirdEndPoint = Offset(size.width, size.height*0.36);
		path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
			thirdEndPoint.dx, thirdEndPoint.dy);
		
		///move from bottom left to bottom right
		path.lineTo(size.width, size.height);
		
		///move from bottom right to top left
		path.lineTo(size.width*0.25, size.height);
		
		
		path.close();
		return path;
	}
	
	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return true;
	}
	
}
