import 'package:isar/isar.dart';

import 'interest_enitity.dart';
import 'school_enitity.dart';

part 'user_enitity.g.dart';

@collection
@Name('user')
class User {
  Id id = Isar.autoIncrement;

  @Name('name')
  String name = '';

  @Index(composite: [CompositeIndex('name')])
  @Name('age')
  int age = 0;

  @Enumerated(EnumType.name)
  Gender? gender;

  @Name('school')
  School? school;

  @Name('interests')
  List<Interest>? interests;
  
  @Name('description')
  String description = '';

  @Index(type: IndexType.value)
  List<String> get descriptionWords => Isar.splitWords(description);

  @ignore
  String? address;
}

enum Gender {
  male,
  female;
}
