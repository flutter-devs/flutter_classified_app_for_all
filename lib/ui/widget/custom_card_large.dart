import 'package:flutter/material.dart';

class CustomCardLarge extends StatelessWidget {
  double _width;
  double _height;
  double _aspectRatio;
  String title;
  String price;
  String dateAdded;
  String category;
  String description;
  String image;
  String location;

  CustomCardLarge(
      {this.title,
      this.price,
      this.dateAdded,
      this.category,
      this.description,
      this.image,
      this.location});

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //width: _width/3.5,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: _height / 4,
                  width: _width / 4,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: _height / 40),
              ),
            ),
            Container(
              //width: _width / 4,
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(2),
                      color: Colors.grey[200],
                      child: Text(
                        category,
                        softWrap: true,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: Container(
                  //width: _width / 4,
                  padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: _height / 70,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              //width: _width / 4,
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today,
                            size: _height / 65,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            dateAdded,
                            style: TextStyle(fontSize: _height / 65),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: _height / 65,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            location,
                            style: TextStyle(fontSize: _height / 65),
                          )
                        ],
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  Flexible(
                    child: GestureDetector(
                      child: Icon(
                        Icons.favorite_border,
                        size: _height / 30,
                      ),
                      onTap: () {
                        print('Fav');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
