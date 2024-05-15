import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Color firstColor = const Color(0xFFFC466B);
Color secondColor = const Color(0xFF2a5a8e);
var backgroundColor = Color.fromARGB(255, 243, 243, 243);
Color whiteColor = Color.fromARGB(239, 255, 255, 255);
Color blackColor = Colors.black;
Color greenColor = Color.fromARGB(146, 175, 236, 177);

Color redColor = Colors.red;

var mainDecoration = BoxDecoration(
  color: whiteColor,
  borderRadius: BorderRadius.circular(5),
  // border: Border.all(color: Colors.red, width: 2)
);
var ssecondDecoration = BoxDecoration(
  color: firstColor,
  borderRadius: BorderRadius.circular(5),
  // border: Border.all(color: Colors.red, width: 2)
);

// text const
class CustomText extends StatelessWidget {
  const CustomText({
    required this.fontWeight,
    required this.color,
    required this.text,
    required this.fontSize,
    Key? key,
    this.overflow,
    this.max,
    this.align,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? max;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      softWrap: true,
      textAlign: align,
      overflow: overflow,
      maxLines: max,
    );
  }
}

class CustomGorticText extends StatelessWidget {
  const CustomGorticText({
    required this.fontWeight,
    required this.color,
    required this.text,
    required this.fontSize,
    Key? key,
    this.overflow,
    this.max,
    this.align,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? max;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.pacifico(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      softWrap: true,
      textAlign: align,
      overflow: overflow,
      maxLines: max,
    );
  }
}

// costom icon
class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.iconData, required this.size, this.color})
      : super(key: key);
  final IconData iconData;
  final double size;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Icon(
        iconData,
        color: color,
        size: size,
      ),
    );
  }
}

List<String> colorCodes = [
  "#FFFFFF", // White
  "#000000", // Black
  // "#FF0000", // Red
  "#192841", // blue dark
  "#0000FF", // Blue
  "#FFFF00", // Yellow
  // "#FFA500", // Orange
];
List<String> colorCodesWithoutHash = colorCodes.map((color) => color.substring(1)).toList();
Color colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceFirst('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

final List<String> myGoogleFonts = [
  "Rubik Burned",
  "Moo Lah Lah",
  "Abril Fatface",
  "Aclonica",
  "Audiowide",
  "Rock Salt",
  "Rubik Moonrocks",
  "Alegreya Sans",
  "Architects Daughter",
  "Archivo",
  "Archivo Narrow",
  "Bebas Neue",
  "Bitter",
  "Bree Serif",
  "Bungee",
  "Bungee Spice",
  "Cabin",
  "Caveat",
  "Cairo",
  "Coda",
  "Comfortaa",
  "Comic Neue",
  "Cousine",
  "Creepster",
  "Croissant One",
  "Faster One",
  "Forum",
  "Great Vibes",
  "Heebo",
  "Inconsolata",
  "Josefin Slab",
  "Lato",
  "Libre Baskerville",
  "Lobster",
  "Lora",
  "Merriweather",
  "Montserrat",
  "Mukta",
  "Monoton",
  "Mr Dafoe",
  "Nunito",
  "Offside",
  "Orbitron",
  "Open Sans",
  "Oswald",
  "Overlock",
  "Pacifico",
  "Parisienne",
  "Playfair Display",
  "Poppins",
  "Press Start 2P",
  "Raleway",
  "Roboto",
  "Roboto Mono",
  "Satisfy",
  "Space Mono",
  "Spicy Rice",
  "Squada One",
  "Sue Ellen Francisco",
  "Trade Winds",
  "Ubuntu",
  "Varela",
  "Vollkorn",
  "Work Sans",
  "Yellowtail",
  "Zilla Slab",
  "Zeyada",
];

var ambassadorCondition = '''
Vous êtes un influenceur local et vous aimeriez lancer votre propre marque de t-shirt avec 0 Francs? Vous voulez gagner de l'argent tout en faisant la promotion de vos t-shirts originaux et de qualité ? Alors devenez ambassadeur de Midgram.ai !

En devenant ambassadeur, vous bénéficierez de ces avantages :

- Création de votre propre marque de vêtements gratuite.
- Deux exemplaires gratuit de t-shirt avec votre marque. 
- Commission de 500 FCFA sur chaque article vendu avec votre code promo (ex: 1000 ventes avec votre code promo = 500.000 fcfa de commission).

En utilisant votre code promo,votre communauté bénéficiera de ces avantages :
- Une réduction de 200 FCFA par article acheté .

Pour devenir ambassadeur, il vous suffit de remplir les conditions suivantes :

- Avoir au moins 2000 followers sur les réseaux sociaux
- Faire une demande via notre application et obtenir un code promo
- Partager le code promo avec votre communauté et partager l'application Midgram.ai dans vos vidéos

N'attendez plus, devenez ambassadeur dès aujourd'hui et faites partie de notre équipe ! 


''';
