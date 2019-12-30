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
								flex: 2,
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
													heightFactor: 0.94,
													child: Container(
														decoration: BoxDecoration(
															color: Colors.white,
															borderRadius: BorderRadius.all(Radius.circular(20.0)),
														),
													),
												),
											),
											Align(
												alignment: Alignment.bottomCenter,
												child: InkWell(
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
												),
											),
										],
									),
								),
							),
							Flexible(
								flex: 1,
								child: Container(
									margin: EdgeInsets.all(16.0),
									decoration: BoxDecoration(
										color: Colors.red,
									),
								),
							),
						],
					),
				],
			),
		);
	}

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
}