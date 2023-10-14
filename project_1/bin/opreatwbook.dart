
import 'dart:io';

import 'project_1.dart';

class OperationWithbook {
List<Map<String, dynamic>> library;


  
 OperationWithbook(this.library);
  

 

  void addNewBook() {
    var newBook = <String, dynamic>{};

    stdout.write("Enter The Name for The Book: ");
    newBook["namebook"] = stdin.readLineSync();

    stdout.write("Enter the author Name: ");
    newBook["authorbook"] = stdin.readLineSync();

    stdout.write("Enter category For The Book: ");
    newBook["category"] = stdin.readLineSync();

    stdout.write("Enter the rating For the Book ");
    newBook["ratingofbook"] = stdin.readLineSync();

    stdout.write("Enter the number of copies: ");
   var input = stdin.readLineSync();
   var copies = int.tryParse(input!);
    if (copies != null && copies >= 0) {
      newBook["copiesforbook"] = copies;
    } else {
      print("Oopss !! :( Invalid input number For copies. Sorry Book not added.");
      return;
    }

    stdout.write("Enter A price For The Book: ");
    var input2 = stdin.readLineSync();
    var price = double.tryParse(input2!);
    if (price != null && price >= 0) {
      newBook["pricebook"] = price;
    } else {
      print("Oopss !! :( Invalid input number For copies. Sorry Book not added.");
      return;
    }

   
    newBook["idbook"] = 'ID-100${library.length + 1}';
    library.add(newBook);
    print("Yayy!! :) New book has been added successfully.");
  }
   void deleteBook(String bookName) {
    int num = -1;
    for (int i = 0; i < library.length; i++) {
      if (library[i]["namebook"] == bookName) {
        num = i;
        break;
      }
    }

    if (num != -1) {
      var deletedBook = library.removeAt(num);
      print("${deletedBook["namebook"]} has been removed from the library.");
    } else {
      print("Oopss Sorry :( $bookName  not exist in Fofa's library.");
    }
  }
   List<String> allCategories() {
    Set<String> categories = {};
    for (var book in library) {
      categories.add(book["category"]);
    }
    return categories.toList();
  }
   void printBookswCategory(String category) {
    print("The Books in the $category category:");
    for (var book in library) {
      if (book["category"] == category) {
        bookInformation(book);
        print("***********");
      }
    }
  }
  
}
