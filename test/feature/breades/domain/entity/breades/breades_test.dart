import 'dart:io';
import 'dart:convert';

import 'package:my_cat_network/feature/breades/domain/entity/breeds/breed.dart';
import 'package:my_cat_network/feature/breades/domain/entity/weight/weight.dart';
import 'package:test/test.dart';

import '../weight/weight_test.dart';

void main() {
  group("Breed model", () {
    test("Test 1. fromJson", () async {
      String response = await jsonConverter("assets/test/jsons/breed.json");
      final json = jsonDecode(response);
      final actual = Breed.fromJson(json);
      const matcher = Breed(
        weight: Weight(imperial: "7  -  10", metric: "3 - 5"),
        id: "abys",
        name: "Abyssinian",
        cfa_url: "http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
        vetstreet_url: "http://www.vetstreet.com/cats/abyssinian",
        vcahospitals_url: "https://vcahospitals.com/know-your-pet/cat-breeds/abyssinian",
        temperament: "Active, Energetic, Independent, Intelligent, Gentle",
        origin: "Egypt",
        country_codes: "EG",
        country_code: "EG",
        description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
        life_span: "14 - 15",
        indoor: 0,
        lap: 1,
        alt_names: "",
        adaptability: 5,
        affection_level: 5,
        child_friendly: 3,
        dog_friendly: 4,
        energy_level: 5,
        grooming: 1,
        health_issues: 2,
        intelligence: 5,
        shedding_level: 2,
        social_needs: 5,
        stranger_friendly: 5,
        vocalisation: 1,
        experimental: 0,
        hairless: 0,
        natural: 1,
        rare: 0,
        rex: 0,
        suppressed_tail: 0,
        short_legs: 0,
        wikipedia_url: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
        hypoallergenic: 0,
        reference_image_id: "0XYvRd7oD",
      );
      expect(actual, matcher);
    });

    test("Test 2. toJson", () async {
      const breed = Breed(
        weight: Weight(imperial: "7  -  10", metric: "3 - 5"),
        id: "abys",
        name: "Abyssinian",
        cfa_url: "http://cfa.org/Breeds/BreedsAB/Abyssinian.aspx",
        vetstreet_url: "http://www.vetstreet.com/cats/abyssinian",
        vcahospitals_url: "https://vcahospitals.com/know-your-pet/cat-breeds/abyssinian",
        temperament: "Active, Energetic, Independent, Intelligent, Gentle",
        origin: "Egypt",
        country_codes: "EG",
        country_code: "EG",
        description: "The Abyssinian is easy to care for, and a joy to have in your home. They’re affectionate cats and love both people and other animals.",
        life_span: "14 - 15",
        indoor: 0,
        lap: 1,
        alt_names: "",
        adaptability: 5,
        affection_level: 5,
        child_friendly: 3,
        dog_friendly: 4,
        energy_level: 5,
        grooming: 1,
        health_issues: 2,
        intelligence: 5,
        shedding_level: 2,
        social_needs: 5,
        stranger_friendly: 5,
        vocalisation: 1,
        experimental: 0,
        hairless: 0,
        natural: 1,
        rare: 0,
        rex: 0,
        suppressed_tail: 0,
        short_legs: 0,
        wikipedia_url: "https://en.wikipedia.org/wiki/Abyssinian_(cat)",
        hypoallergenic: 0,
        reference_image_id: "0XYvRd7oD",
      );
      final actual = breed.toJson();

      String response = await jsonConverter("assets/test/jsons/breed.json");
      final matcher = jsonDecode(response);

      expect(actual, matcher);
    });
  });
}
