import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarPart extends StatefulWidget {
  const SearchBarPart({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBarPart> createState() => _SearchBarPartState();
}

class _SearchBarPartState extends State<SearchBarPart> {
  final overlayController = OverlayPortalController();
  final overlayLink = LayerLink();


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    return CompositedTransformTarget(
      link: overlayLink,
      child: OverlayPortal(
        controller: overlayController,
        overlayChildBuilder: (context) {
          return CompositedTransformFollower(
            link: overlayLink,
            targetAnchor: Alignment.bottomLeft,
            // followerAnchor: Alignment.bottomLeft,
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 15),
                    child: Text("Yaqin orada qidirilganlar:", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: height * 0.018),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 12),
                    child: InkWell(onTap: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopsPage()));
                    },child: Text("Di Flora", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: height * 0.017),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(color: Colors.grey.withOpacity(0.2)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 6),
                    child: Text("Orange juice🧡", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: height * 0.017),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(color: Colors.grey.withOpacity(0.2)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 6),
                    child: Text("Teddy 2.5 metr🤩", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: height * 0.017),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(color: Colors.grey.withOpacity(0.2)),
                  ),
                ],
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0, right: 22.0),
          child: SizedBox(
            height: height * 0.055,
            child: TextFormField(
              onFieldSubmitted: (_) {
                overlayController.hide();
                FocusScope.of(context).unfocus();
              },
              onTap: () {
                overlayController.show();
              },
              onTapOutside: (_) {
                overlayController.hide();
                FocusScope.of(context).unfocus();
              },
              style: GoogleFonts.poppins(fontSize: height * 0.020),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: const Color(0xff178663).withOpacity(0.4),
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: 12.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      overlayController.hide();
                      FocusScope.of(context).unfocus();
                    },
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Color(0xff178663),
                    ),
                  ),
                ),
                hintText: "Sumka, do'kon yoki sumka nomi",
                hintStyle: GoogleFonts.poppins(fontSize: height * 0.020),
                contentPadding: EdgeInsets.only(top: height * 0.035),
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                        color: const Color(0xff178663).withOpacity(0.4),
                        width: 1.3)),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Color(0xff178663), width: 1.3)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                        color: const Color(0xff178663).withOpacity(0.4),
                        width: 1.3)),
                filled: true,
                fillColor: const Color(0xffEDF8F4).withOpacity(0.5),
              ),
              cursorColor: const Color(0xff178663).withOpacity(0.9),
              cursorHeight: height * 0.025,
            ),
          ),
        ),
      ),
    );
  }
}
