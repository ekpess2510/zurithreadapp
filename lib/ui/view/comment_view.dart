import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:untitled/ui/view/threadModel/commentModel.dart';

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return ViewModelBuilder<CommentModel>.reactive(
      builder: (context, model, child) => Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 31),
            child: Container(
              // height: 42,
              //width: 42,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 80),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 42,
                          width: 42,
                          child: Image.asset(model.image1),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  model.usernames,
                                  style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Image.asset(
                                  model.emoji,
                                  width: 14,
                                  height: 14,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  model.time,
                                  style: GoogleFonts.lato(
                                    color: HexColor("727272"),
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Row(
                                children: [
                                  Text(
                                    model.comments,
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('424141'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      viewModelBuilder: () => CommentModel(),
    );
  }
}
