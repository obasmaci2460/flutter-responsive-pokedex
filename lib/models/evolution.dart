// ignore_for_file: public_member_api_docs, sort_constructors_first
class Evolution {
    final String num;
    final String name;

    Evolution({
        required this.num,
        required this.name,
    });

    factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
    };


  @override
  String toString() => name;
}
