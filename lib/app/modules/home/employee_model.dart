class EmployeeModel{
    final String? name;
    final String? address;
    List<Elements>? elements;

    EmployeeModel({
       required this.name, required this.address
    });


}


class Elements {
  List<ElementDetails>? elementDetails;
  Elements();
  // Elements({ required this.elementDetails,});


}

class ElementDetails {
  int? serialNo;
  String? elementName;

  ElementDetails({this.serialNo, this.elementName});


}