import 'package:chatapp/models/user_model.dart';
import 'package:intl/intl.dart';

class UserList{
  static List<User> users = new List<User>();
  static int count = 6;

  UserList(){
    initialize();
  }

  void initialize(){
    String currentTime = DateFormat.jm().format(DateTime.now());

    users.add(new User("Aditya","images/i1.jpg",currentTime,2,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,1,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,3,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
    users.add(new User("Aditya","images/i1.jpg",currentTime,0,currentTime));
    users.add(new User("Joy","images/i2.webp",currentTime,0,currentTime));
    users.add(new User("Arushi","images/i3.webp",currentTime,0,currentTime));
    users.add(new User("Test","images/i4.webp",currentTime,0,currentTime));
    users.add(new User("Customer","images/i5.jpg",currentTime,0,currentTime));
    users.add(new User("Yahoo","images/i6.jpg",currentTime,0,currentTime));
    users.add(new User("Gaurav","images/i7.jpg",currentTime,0,currentTime));
    users.add(new User("Ayush","images/i8.png",currentTime,0,currentTime));
    users.add(new User("Siddhant","images/i9.jpg",currentTime,0,currentTime));
    users.add(new User("Fardeen","images/i10.jpg",currentTime,0,currentTime));
  }


  List<User> getUsers(){
    return users;
  }
}