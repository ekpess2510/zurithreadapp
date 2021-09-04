import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:untitled/ui/view/threadModel/thread_viewmodel.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/ui/view/comment_view.dart';
import 'package:flutter/services.dart';

class ThreadView extends StatelessWidget {
  // const ThreadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ThreadViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('00b87c'),
          ),
          backgroundColor: Colors.white,
          //foregroundColor: Colors.white,
          toolbarHeight: 54,
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: HexColor('#333333'),
            size: 16,
          ),
          titleSpacing: 0,

          title: Text(
            model.threads,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                //letterSpacing: 0.5,
                color: HexColor('#201e1f'),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 212),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 21, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 16),
                            Text(
                              'Message in',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: HexColor('#727272'),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.lock,
                              size: 12,
                              color: HexColor('#1A61DB'),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'team-socrates',
                              style: GoogleFonts.lato(
                                color: HexColor('#1A61DB'),
                                fontSize: 12,
                                //textBaseline: ,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              width: 42,
                              height: 42,
                              child: FittedBox(
                                child: Image.asset('images/Rectangle 172.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'princessliz',
                                      style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 4.0),
                                      height: 14,
                                      width: 14,
                                      child:
                                          Image.asset('images/Group 1280.png'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '30 Aug at 20:31',
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontStyle: FontStyle.normal),
                                )
                              ],
                            ),
                            Icon(
                              Icons.bookmark_border_outlined,
                              size: 18,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Aristotle - @caculuz.,\n"
                          "Aquinas - @caculuz.,\n"
                          "Socrates - @Feranmi..",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            //     letterSpacing: 0.5,
                            height: 1.3,
                            color: HexColor('#424141'),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: HexColor('#93B0E1'),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(
                              color: HexColor('#1a61db'),
                            ),
                          ),
                          width: 45,
                          height: 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/po.png",
                                width: 16,
                                height: 16,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '3',
                                style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                //height: 20,
                //thickness: 0.5,
                //endIndent: 0,
                color: HexColor('#7b8794'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 20, 13),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1 reply",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          // letterSpacing: ,
                          color: HexColor('#424141'),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.forward_outlined,
                            size: 24,
                            color: HexColor('#424141'),
                          ),
                          SizedBox(
                            width: 33.92,
                          ),
                          Icon(
                            Icons.more_vert_rounded,
                            color: HexColor('#424141'),
                            size: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                //height: 20,
                //thickness: 0.5,
                //endIndent: 0,
                color: HexColor('#7b8794'),
              ),
              Comment(),
              ListTile(
                title: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 0, 8, 0),
                      hintText: "Add a reply",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomSheet:  ,
      ),
      viewModelBuilder: () => ThreadViewModel(),
    );
  }
}
