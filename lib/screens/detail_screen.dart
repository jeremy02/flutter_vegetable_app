import 'package:flutter/material.dart';
import 'package:flutter_vegetable_app/components/top_background.dart';

class DetailScreen extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			body: Stack(
				children: <Widget>[
					Align(
						alignment: Alignment.topLeft,
						child: Container(
							color: Colors.white,
							width: MediaQuery.of(context).size.width,
							child: TopBackground(),
						),
					),
					Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(
									top: MediaQuery.of(context).size.height/12,
									bottom: MediaQuery.of(context).size.height/27,
								),
								child: Center(
									child: Text(
										"Detail",
										style: TextStyle(
											fontSize: 20.0,
											color: Colors.white,
											fontWeight: FontWeight.bold,
											letterSpacing: 1.2,
										),
									),
								)
							),
							Flexible(
								flex: 1,
								child: Padding(
									padding: EdgeInsets.symmetric(horizontal: 26.0),
									child: Stack(
										children: <Widget>[
											Card(
												shape: RoundedRectangleBorder(
													borderRadius: BorderRadius.all(Radius.circular(20.0)),
												),
												child: FractionallySizedBox(
													widthFactor: 1.0,
													heightFactor: 0.96,
													child: LayoutBuilder(
														builder: (context, constraints) {
															return Column(
																children: <Widget>[
																	SizedBox(height: 16.0,),
																	Image.asset(
																		"assets/images/fresh_onion.jpg",
																		fit: BoxFit.contain,
																		height: constraints.maxHeight*0.50,
																	),
																	SizedBox(height: 8.0,),
																	Expanded(
																		child: Padding(
																			padding: EdgeInsets.symmetric(
																				horizontal: 10.0,
																			),
																			child: Column(
																				children: <Widget>[
																					  titleContent(),
																					  Expanded(
																						  child: descriptionContent(),
																					  ),
																				],
																			),
																		),
																	),
																],
															);
														}
													),
												),
											),
											Align(
												alignment: Alignment.bottomCenter,
												child: addToCartButton(context),
											),
										],
									),
								),
							),
							Container(
								height: MediaQuery.of(context).size.height*0.18,
								margin: EdgeInsets.all(10.0),
								decoration: BoxDecoration(
									color: Colors.red,
								),
							),
						],
					),
				],
			),
		);
	}

	// the add to cart button
    Widget addToCartButton(BuildContext context) {
		return InkWell(
			splashColor: Colors.black.withOpacity(0.4),
			onTap: (){},
			child: Builder(
				builder: (BuildContext context) {
					return RaisedButton(
						textColor: Colors.white,
						color: Color.fromRGBO(136, 187, 19, 1.0),
						child: Text(
							"Add to Cart",
							style: TextStyle(
								fontWeight: FontWeight.bold,
							),
						),
						padding: EdgeInsets.symmetric(
							vertical: 12.0,
							horizontal: 20.0,
						),
						onPressed: () {
							// add to cart action
							addToCart(context);
						},
						shape: RoundedRectangleBorder(
							borderRadius: BorderRadius.circular(30.0),
						),
					);
				},
			),
		);
    }
	
	// the add to cart button function
	addToCart(BuildContext context) {
		// show snackbar for adding to cart
		final snackBar = SnackBar(
			content: Text('Added To Cart!'),
			action: SnackBarAction(
				label: 'REMOVE',
				onPressed: () {
					// Some code to undo the change.
				},
			),
		);
		
		// Find the Scaffold in the widget tree and use
		// it to show a SnackBar.
		Scaffold.of(context).showSnackBar(snackBar);
	}

    Widget titleContent() {
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			children: <Widget>[
				Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						Text(
							"Red Capsicum",
							style: TextStyle(
								fontWeight: FontWeight.bold,
								color: Colors.black,
								fontSize: 18.0,
							),
						),
						Padding(
							padding: EdgeInsets.only(top: 8.0),
							child: Text(
								"900gm",
								style: TextStyle(
									fontWeight: FontWeight.bold,
									color: Color.fromRGBO(185, 184, 184, 1.0),
									fontSize: 14.0,
								),
							),
						),
					],
				),
				Text(
					"\$18",
					style: TextStyle(
						fontWeight: FontWeight.bold,
						color: Colors.black,
						fontSize: 20.0,
					),
				),
			],
		);
    }
	
	Widget descriptionContent() {
		return Padding(
			padding: EdgeInsets.only(top: 8.0,bottom: 20),
			child: SingleChildScrollView(
				child: Text(
					"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
						"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
						"reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in "
						"culpa qui officia deserunt mollit anim id est laborum.",
					style: TextStyle(
						fontWeight: FontWeight.normal,
						color: Colors.grey.shade600,
						fontSize: 14.0,
					),
				),
			),
		);
	}
}