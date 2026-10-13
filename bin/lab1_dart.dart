String greet(String name) {
  return 'Привет, $name!';
}

String greetArrow(String name) => 'Привет, $name!';

int square(int x) => x * x;

double half(double x) => x / 2;

void describePet({required String name, String species = 'kot', int age = 0}) {
  print('$name - $species, возраст $age');
}

String repeat(String text, [int times = 2]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}

void main() {
  print(greet('Артём'));
  print(greet('Мария'));

  print(greetArrow('Артём'));
  print(square(5));
  print(half(10));

  describePet(name: 'Барсик', age: 3);
  describePet(name: 'Шарик', species: 'пёс');
  describePet(name: 'Мурка');

  print(repeat('xa'));
  print(repeat('xa', 3));

  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a);
  print(numbers);

  List<String> names = ['Артём', 'Мария', 'Иван'];

  List<String> upper = names.map((name) => name.toUpperCase()).toList();
  print(upper);

  List<String> longNames = names.where((name) => name.length > 4).toList();
  print(longNames);
}