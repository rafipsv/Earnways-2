class SportUpdateModel {
  bool? status;
  List<SportUpdate>? sportUpdate;

  SportUpdateModel({this.status, this.sportUpdate});

  SportUpdateModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['sport_update'] != null) {
      sportUpdate = <SportUpdate>[];
      json['sport_update'].forEach((v) {
        sportUpdate!.add(SportUpdate.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (sportUpdate != null) {
      data['sport_update'] = sportUpdate!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SportUpdate {
  int? id;
  int? team1Id;
  int? team2Id;
  String? title;
  int? catId;
  String? datetime;
  String? description;
  String? createdAt;
  String? updated;
  Category? category;
  Team1? team1;
  Team1? team2;

  SportUpdate(
      {this.id,
      this.team1Id,
      this.team2Id,
      this.title,
      this.catId,
      this.datetime,
      this.description,
      this.createdAt,
      this.updated,
      this.category,
      this.team1,
      this.team2});

  SportUpdate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    team1Id = json['team1_id'];
    team2Id = json['team2_id'];
    title = json['title'];
    catId = json['cat_id'];
    datetime = json['datetime'];
    description = json['description'];
    createdAt = json['created_at'];
    updated = json['updated'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    team1 = json['team1'] != null ? Team1.fromJson(json['team1']) : null;
    team2 = json['team2'] != null ? Team1.fromJson(json['team2']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['team1_id'] = team1Id;
    data['team2_id'] = team2Id;
    data['title'] = title;
    data['cat_id'] = catId;
    data['datetime'] = datetime;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['updated'] = updated;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (team1 != null) {
      data['team1'] = team1!.toJson();
    }
    if (team2 != null) {
      data['team2'] = team2!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Team1 {
  int? id;
  String? name;
  String? image;

  Team1({this.id, this.name, this.image});

  Team1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}
