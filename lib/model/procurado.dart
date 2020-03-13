class Procurado{
  String name;
  String nick;
  String photo;
  String description;

  Procurado({this.name, this.nick, this.photo, this.description});

  Procurado.fromJson(Map<String, dynamic> json){
    name = json['name'];
    nick = json['nick'];
    photo = json['photo'];
    description = json['description'] != null ? json['description'] : "";
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['name'] = this.name;
    data['nick'] = this.nick;
    data['photo'] = this.photo;
    data['description'] = this.description;

    return data;
  }
}