import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyConstants {
  final Color backgroundColor = Color(0xFFececec);
  final Color weatherDarkBackground = Color(0xFF373748);
  final Color weatherLightBackground = Color(0xFF5555ff);
  final Color yellowAccent = Color(0xFFffdd55);
  final Color blueAccent = Color(0xFF00a3ff);
}

class CuacaDisiniNotCollapsed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0,),
          Text('Cuaca Disini', style: GoogleFonts.montserrat(fontWeight: FontWeight.w800, fontSize: 48.0, color: MyConstants().weatherDarkBackground)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Text('Situasi cuaca di kota dimana kamu berada saat ini.', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18.0, color: Colors.black54), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 30.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: MyConstants().weatherDarkBackground
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(18.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Purwosari', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 32.0, color: Colors.white)),
                              Text('Sel, 8 Des 13:47', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: MyConstants().blueAccent),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                            child: Image.asset('assets/png/weather/glass/thunder.png', width: 100,),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('22°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 24.0, color: MyConstants().blueAccent)),
                              Text('Hujan dan petir.', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: Colors.white),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Detail', style: GoogleFonts.roboto(fontSize: 18.0, color: Colors.white),),
                              Icon(LineAwesomeIcons.angle_right, color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CuacaDisiniIsCollapsed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Cuaca disini', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: MyConstants().weatherDarkBackground),),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: MyConstants().weatherDarkBackground
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(18.0),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Purwosari', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 28.0, color: Colors.white)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('22°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 18.0, color: MyConstants().blueAccent)),
                              SizedBox(width: 5.0),
                              Icon(LineAwesomeIcons.minus, color: Colors.white,),
                              SizedBox(width: 5.0),
                              Text('Hujan dan petir.', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/png/weather/glass/thunder.png', width: 64,),
                          SizedBox(width: 10.0,),
                          Icon(LineAwesomeIcons.angle_right, color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class KotaFavorit extends StatelessWidget {
  KotaFavorit({
    this.isTerang,
    this.namaKota,
    this.suhu,
    this.kondisi,
    this.gambarIconCuaca,
  });

  final bool isTerang;
  final String namaKota;
  final int suhu;
  final String kondisi;
  final String gambarIconCuaca;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: isTerang ? MyConstants().weatherLightBackground : MyConstants().weatherDarkBackground
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(18.0),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(namaKota, style: GoogleFonts.montserrat(fontSize: 20.0, color: Colors.white)),
                    Image.asset(gambarIconCuaca, width: 32.0,),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(suhu.toString() + '°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 28.0, color: isTerang ? MyConstants().yellowAccent : MyConstants().blueAccent)),
                Text(kondisi, style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 14.0, color: Colors.white),),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}