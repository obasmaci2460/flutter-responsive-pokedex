// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

import 'package:poke_app/models/evolution.dart';

List<Pokemon> pokemonFromJson(String str) => List<Pokemon>.from(json.decode(str).map((x) => Pokemon.fromJson(x)));

String pokemonToJson(List<Pokemon> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pokemon {
    final int? id;
    final String? num;
    final String? name;
    final String? img;
    final List<String>? type;
    final String? height;
    final String? weight;
    final String? candy;
    final int? candyCount;
    final String? egg;
    final double? spawnChance;
    final double? avgSpawns;
    final String? spawnTime;
    final List<double>? multipliers;
    final List<String>? weaknesses;
    final List<Evolution>? nextEvolution;
    final List<Evolution>? prevEvolution;

    Pokemon({
        required this.id,
        required this.num,
        required this.name,
        required this.img,
        required this.type,
        required this.height,
        required this.weight,
        required this.candy,
        required this.candyCount,
        required this.egg,
        required this.spawnChance,
        required this.avgSpawns,
        required this.spawnTime,
        required this.multipliers,
        required this.weaknesses,
        required this.nextEvolution,
        required this.prevEvolution,
    });

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"]  ,
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"]?.toDouble(),
        avgSpawns: json["avg_spawns"]?.toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"]!=null ? List<double>.from(json["multipliers"].map((x) => x?.toDouble())):null,
        weaknesses:  json["weaknesses"] != null ? List<String>.from(json["weaknesses"].map((x) => x)):null,
        nextEvolution:json["next_evolution"] !=null ? List<Evolution>.from(json["next_evolution"].map((x) => Evolution.fromJson(x))) : null,
        prevEvolution:json["prev_evolution"] !=null ? List<Evolution>.from(json["prev_evolution"].map((x) => Evolution.fromJson(x))) : null,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type!.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": List<dynamic>.from(multipliers!.map((x) => x)),
        "weaknesses": List<dynamic>.from(weaknesses!.map((x) => x)),
        "next_evolution": List<dynamic>.from(nextEvolution!.map((x) => x.toJson())),
        "prev_evolution": List<dynamic>.from(prevEvolution!.map((x) => x.toJson())),
    };
}

