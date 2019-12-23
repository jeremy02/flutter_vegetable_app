import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget{
	
	@override
	Widget build(BuildContext context) {
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
}