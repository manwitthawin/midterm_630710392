import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final String text2;

  //final IconData icon;
  const CategoryButton({
    super.key,
    required this.text,
    required this.text2,//required notation ที่เราจะใส่ใน argument ที่บังคับให้ใส่
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10
              ),
              child: Text(
                text2,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        //width: 120.0,

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
class CategoryButton2 extends StatelessWidget {
  final String text3;

  //final IconData icon;
  const CategoryButton2({
    super.key,
    required this.text3, //required notation ที่เราจะใส่ใน argument ที่บังคับให้ใส่
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  16.0
              ),
              child: Text(
                text3,
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
        //width: 120.0,

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.greenAccent
        ),
      ),
    );
  }
}

class CategoryButton3 extends StatelessWidget {
  final String text4;

  //final IconData icon;
  const CategoryButton3({
    super.key,
    required this.text4, //required notation ที่เราจะใส่ใน argument ที่บังคับให้ใส่
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10
      ),
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(
                    6.0
                ),
                child: Text(
                  text4,
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          //width: 120.0,

          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.green
          ),
      ),
    );
  }
}

