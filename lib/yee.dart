void main()
{
 var p = Person('Kira', 'Yoshikage', 33);


}
class Person
{
  String firstName;
  String lastName;
  int age;
  Person(this.firstName,this.lastName,this.age);
}
class product
{
  final String name;
  final int price;
  int orderCount = 0;
  product(this.name,this.price);
}