import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  //const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black.withOpacity(0.1),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black.withOpacity(0.1),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.search),
            Container(
              width: 300, //add medida de largura
              padding: EdgeInsets.only(left: 16),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Search",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
