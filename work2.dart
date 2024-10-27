abstract class Printable {
  void printData();
}

class Person implements Printable {
  String? Name;
  int? Age;

  Person(this.Name, this.Age);

  @override
  void printData() {
    print('Name: $Name,Age: $Age');
  }
}

class Product implements Printable {
  String? Nameproduct;
  double? Price;

  Product(this.Nameproduct, this.Price);
  @override
  void printData() {
    print('ProductName: $Nameproduct Price: $Price');
  }
}

void printItem<T extends Printable>(T Item) {
  Item.printData();
}

void main(List<String> args) {
  Person person = Person('Jame', 20);
  Product product = Product('phone', 15000);

  printItem(person);
  printItem(product);
}
//นายบัณฑิต ทองประเสริฐ ป.สสท3 1146