class MyData {
  MyData({
    this.icon,
    this.name,
    this.desc,
  });

  String icon;
  String name;
  String desc;

  factory MyData.fromJson(Map<String, dynamic> json) => MyData(
    icon: json["icon"],
    name: json["name"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "icon": icon,
    "name": name,
    "desc": desc,
  };
}