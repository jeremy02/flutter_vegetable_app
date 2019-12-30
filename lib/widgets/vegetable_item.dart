import 'package:flutter/material.dart';
import 'package:flutter_vegetable_app/screens/detail_screen.dart';

class VegetableItem extends StatelessWidget{
	
	double childAspectRatio;
	
	VegetableItem({Key key, this.childAspectRatio}) : super(key:key);
	
	@override
	Widget build(BuildContext context) {
		return Card(
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.all(Radius.circular(16.0)),
			),
			child: InkWell(
				borderRadius: BorderRadius.all(Radius.circular(16)),
				onTap: (){
					// go to next screen
					Navigator.push(
						context,
						MaterialPageRoute(builder: (context) => DetailScreen()),
					);
				},
				child: Stack(
					children: <Widget>[
						buildImageAndTextContent(childAspectRatio),
						buildAddToCartIcon(childAspectRatio,context),
					],
				),
			),
			elevation: 12.0,
			color: Colors.white,
		);
	}

	Widget buildImageAndTextContent(double childAspectRatio) {
		return Positioned(
			top: childAspectRatio*60,
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Padding(
						padding: EdgeInsets.only(
							left: 8.0,
							right: 8.0,
						),
						child: Image.asset(
							"assets/images/red_capsicum.png",
							fit: BoxFit.cover,
							height: childAspectRatio*120,
						),
					),
					Padding(
						padding: EdgeInsets.only(
							top: 16.0,
							left: 8.0,
							right: 8.0,
						),
						child: Text(
							"Red Capsicum",
							style: TextStyle(
								fontWeight: FontWeight.bold,
								color: Colors.black,
							),
						),
					),
					Padding(
						padding: EdgeInsets.symmetric(
							vertical: 2.0,
							horizontal: 8.0,
						),
						child: Text(
							"900gm",
							style: TextStyle(
								fontWeight: FontWeight.bold,
								color: Color.fromRGBO(185, 184, 184, 1.0),
								fontSize: 12.0,
							),
						),
					),
					Padding(
						padding: EdgeInsets.symmetric(
							vertical: 2.0,
							horizontal: 8.0,
						),
						child: Text(
							"\$18",
							style: TextStyle(
								fontWeight: FontWeight.bold,
								color: Colors.black,
								fontSize: 14.0,
							),
						),
					),
				],
			)
		);
	}
	
	Widget buildAddToCartIcon(double childAspectRatio, BuildContext context) {
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
					clipper: IconButtonCustomClipper(),
					child: Container(
						decoration: BoxDecoration(
							color: Color.fromRGBO(136, 187, 19, 1.0),
							borderRadius: BorderRadius.only(
								bottomRight: Radius.circular(
									16.0,
								),
							),
						),
						child: InkWell(
							onTap: (){
								// show snackbar for adding to cart
								final snackBar = SnackBar(
									content: Text('Added To Cart!'),
									action: SnackBarAction(
										label: 'Remove',
										onPressed: () {
											// Some code to undo the change.
										},
									),
								);
								
								// Find the Scaffold in the widget tree and use
								// it to show a SnackBar.
								Scaffold.of(context).showSnackBar(snackBar);
							},
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
						)
					),
				),
			),
		);
	}
}


class IconButtonCustomClipper extends CustomClipper<Path>{
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
