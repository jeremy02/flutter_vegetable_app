import 'package:flutter/material.dart';
import 'package:flutter_vegetable_app/widgets/vegetable_item.dart';

class HomeScreenContent extends StatelessWidget{
	
	final textTitle;
	
	const HomeScreenContent({Key key, this.textTitle}) : super(key: key);

    @override
	Widget build(BuildContext context) {
		
		double childAspectRatio = MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.4);
		
		return Stack(
				fit: StackFit.expand,
				children: <Widget>[
					Column(
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(
									top: MediaQuery.of(context).size.height*0.08,
									bottom: MediaQuery.of(context).size.height*0.075,
								),
								child: Text(
									textTitle,
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
													bottom: 10.0,
													left: index % 2 == 0 ? 0.0 : 8.0,
												),
												child: VegetableItem(childAspectRatio : childAspectRatio),
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