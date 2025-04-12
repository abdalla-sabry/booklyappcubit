import 'package:booklyappcubit/Future/homeVeiw/presentaion/viewModel/BookDateModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contenerderilsforbestseller extends StatelessWidget {
   Contenerderilsforbestseller({required this.bookDate});
BookDateModel bookDate;
  @override
  Widget build(BuildContext context) {
    return           Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 4.0),
          child: Text(bookDate.bookName!,style: GoogleFonts.playfair(
            fontSize: 20,color: Colors.white,
          ),maxLines: 2,overflow: TextOverflow.ellipsis,),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 2.0),
          child: Text(bookDate.writerName!,style: GoogleFonts.playfair(
            fontSize: 14,color: Color(0xff707070),
          ),maxLines: 1,overflow: TextOverflow.ellipsis,),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 2.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment
            .start,
            children: [
              Text('${bookDate.prise!}',style: GoogleFonts.playfair(
                fontSize: 20,color: Colors.white,
              ),maxLines: 1,overflow: TextOverflow.ellipsis,),
              ContenerForRateAndNumeberSelling(bookdata: bookDate,)
            ],
          ),
        ),
      ],
    )
    ;
  }
}
class ContenerForRateAndNumeberSelling extends StatelessWidget {
  ContenerForRateAndNumeberSelling({required this.bookdata});
BookDateModel bookdata;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber, // Yellow star
          size: 20,
        ),
        SizedBox(width: 4),
        Text(
          '4.8',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white, // or your theme color
          ),
        ),Padding(
    padding:  EdgeInsets.only(top: 2.0),
    child: Text(bookdata.writerName!,style: GoogleFonts.playfair(
    fontSize: 14,color: Color(0xff707070),
    ),maxLines: 1,overflow: TextOverflow.ellipsis,),)
      ],
    );
  }
}
