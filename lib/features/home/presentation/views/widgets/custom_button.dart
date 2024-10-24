import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ---- 1st Button ''
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12))),
              ),
              onPressed: () => {},
              child: Text('19.99€',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
            ),
          ),
          // ---- 2nd Button '-'
          Expanded(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color(0xFFEF8262),
                side: BorderSide(color: Color(0xFFEF8262)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
              ),
              onPressed: () async {
                final Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);

                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  throw 'Could not launch $uri';
                }
              },
              child: Text('Free preview',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
