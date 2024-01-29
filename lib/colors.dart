import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';








Color gtgreen =Color(0xFF228B22);

Color gtgrey =Color(0xFF676666);//for divider text
Color  dividerclr =Color(0xFF989898);//for divider





Color bgclr =Color(0xFFF5F5F5);






TextStyle dividertext = TextStyle(fontSize:18,color: gtgrey,fontWeight: FontWeight.bold,fontFamily: "Outfit-SemiBold");
TextStyle headers = TextStyle(fontSize: 23,color: gtgrey,fontFamily: "Outfit-SemiBold");
TextStyle abc = TextStyle(color: Colors.black54,fontSize:17,fontFamily: "Outfit-SemiBold");
 //TextStyle dividertext = GoogleFonts.openSans(fontSize:18,color: gtgrey,fontWeight: FontWeight.bold);
//TextStyle headers = GoogleFonts.openSans(fontSize: 23,color: gtgrey,);
//TextStyle abc = GoogleFonts.openSans(color: Colors.black54,fontSize:17,);


class Offer{
  String? image;
  String? text;
  Offer(this.image,this.text);
}
List Offer_details =offer.map((e) => Offer(e['image'], e['text'])).toList();
var offer=[
  {"image":"assets/img/off1.jpg"},
  {"image":"assets/img/off2.jpeg"},
  {"image":"assets/img/off3.jpg"},


];


// ignore: camel_case_types



class gts {
  final String? image;
  gts(this.image);
}
List gt = gtData.map((e) => gts(e["image"])).toList();
var gtData =[
  {"image":"assets/img/m1.jpg",},
  {"image":"assets/img/m2.jpg",},
  {"image":"assets/img/m3.jpg",},

];


class pay {
  final String? image;
  pay(this.image);
}
List payimage = payimageData.map((e) => pay(e["image"])).toList();
var payimageData =[
  {"image":"assets/img/offer.jpg",},
  {"image":"assets/img/pp.jpg",},
  {"image":"assets/img/cake.jpg",},
];


class donuts {
  final String? image;
  donuts(this.image);
}
List Donut = DonutData.map((e) => donuts(e["image"])).toList();
var DonutData =[
  {"image":"assets/img/2.jpg",},
];


class bank {
  final String? image;
  bank(this.image);
}
List dis = disData.map((e) => bank(e["image"])).toList();
var disData =[
  {"image":"assets/img/b1.png",},
  {"image":"assets/img/b2.jpg",},
];


class hotelDetail {
  final String? image;
  final String? place;
  final String? distance;
  final String? rating;
  final String? hotelName;
  final String? cusine;
  hotelDetail(this.image,this.place,this.distance,
      this.rating,this.hotelName,this.cusine);

}
List Similar = SimilarData.map((e) => hotelDetail(
  e["image"],
  e["place"],
  e["distance"],
  e["rating"],
  e["hotelName"],
  e["cusine"],
)).toList();
var SimilarData =[
  {
    "image":"assets/img/ap.jpg",
    "place":"RaceCourse,Coimbatore",
    "distance":"10-30mins-4km",
    "rating":"4",
    "hotelName":"Annapoorna",
    "cusine":"Veg-Chinese-Italian"
  },
  {
    "image":"assets/img/ap.jpg",
    "place":"Race Course,Coimbatore",
    "distance":"10 mins-450m",
    "rating":"4.5",
    "hotelName":"Richy Rich",
    "cusine":"Ice cream Shop"
  },{
    "image":"assets/img/ap.jpg",
    "place":"Sungam,Coimbatore",
    "distance":"15-20mins-5km",
    "rating":"4.4",
    "hotelName":"Gowri Krishna",
    "cusine":"PureVeg-Chinese"
  },
    {
    "image":"assets/img/ap.jpg",
    "place":"Gandhipuram,Coimbatore",
    "distance":"25-40 mins-10km",
    "rating":"4.6",
    "hotelName":"Geetha Mess",
    "cusine":"Veg-Nonveg-Chinese"
  },




];




class Budget {
  final String? image;
  final String? text;
  Budget(this.image,this.text);
}
List budgetdetails = budgetData.map((e) => Budget(e["image"],e["text"])).toList();
var budgetData =[
  {"image":"assets/img/meal1.jpg","text":"₹77"},
  {"image":"assets/img/meals.jpg","text":"₹88"},
  {"image":"assets/img/pizz.jpeg","text":"₹99"},
  {"image":"assets/img/meal1.jpg","text":"₹77"},
  {"image":"assets/img/meals.jpg","text":"₹88"},
  {"image":"assets/img/pizz.jpeg","text":"₹99"},
];


class cat {
  final String? image;
  final String? text;
  cat(this.image,this.text);
}
List cata = cataData.map((e) => cat(e["image"],e["text"])).toList();
var cataData =[
  {"image":"assets/img/bir.jpg","text":"Biriyani"},
  {"image":"assets/img/chinese.jpg","text":"Chinese"},
  {"image":"assets/img/dess.jpg","text":"Desserts"},
  {"image":"assets/img/juice.jpg","text":"Juice"},
  {"image":"assets/img/burger.jpeg","text":"Burger"},
];

class StateService {
  static final List<String> states = [
    'Annapoorna Gowrishankar',
    'Aanandhas',
    'Aboorvas',
    'Buhari',
    'Hotel Chola',
    'Geetha Canteen',
    'Geetha Hotels',
    'Cheap and Best',
    'Delhi Darbar',
    'SS Hyderabadi Biryani',
    'Hotel Maa',
    'Aryen Biryani',
    'Hotel Aryas',
    'Burgerking',
    'KFC',
    'Hot & Spicy',
    'Selvamani Canteen',
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = [];
    matches.addAll(states);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
