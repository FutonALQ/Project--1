//import 'package:project_1/project_1.dart' as project_1;
import 'allbooks.dart';
import 'dart:io';
import 'editing.dart';
import 'opreatwbook.dart';
import 'pers.dart';

void main(){
  
  var operationwbook = OperationWithbook(libraryofallbooks);
  var purchase = PurchaseOperation(libraryofallbooks);
  var editing = EditingOperation(libraryofallbooks);
print("Welcome to Fofa's Library!");
  while (true) {
    print("Choose What You Want:");
    print("1: Showes All Books");
    print("2: Search by Author");
    print("3: Search by Category");
    print("4: Search by Book Name");
    print("5: Add New Book");
    print("6: delete A Book");
    print("7: You can Purchase A book !");
    print("8: Editing any Book");
    print("9: View your invoice");
    print("10: Showes all Catgoray");
    print("11: You can say Goodbey to Fofa's Library !");

    stdout.write("Enter your choice (1-11): ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        showsAllBooks(libraryofallbooks);
        break;
      case "2":
        searchByAuthor(libraryofallbooks);
        break;
      case "3":
        searchByCategory(libraryofallbooks);
        break;
      case "4":
        searchByNameBook(libraryofallbooks);
        break;
      case "5":
         operationwbook .addNewBook();
      case "6":
       stdout.write("Enter the name Of Book to delete: ");
        var bookName = stdin.readLineSync();
         operationwbook .deleteBook(bookName!);
        break;
      case "7":
      
     stdout.write("Enter the name Of Book to purchase: ");
     var bookName = stdin.readLineSync();
     stdout.write("Enter the number of copies That you want to purchase: ");
     var input = stdin.readLineSync();
     var numCopies = int.tryParse(input!);
    if (numCopies != null && numCopies > 0) {
    purchase.purchaseBook(bookName!, numCopies);
    } else {
    print("Oopss!! Invalid input for the number to copies. You can Try again :)!");
  }
  break;
   case"8":
   editing.editiBookInfo();
    break;
  case "9":
  purchase.displayInvoice();
  break;
  case "10":
     var allcategories = operationwbook.allCategories();
        print("The Book Categories In Fofa's Library:");
        for (int i = 0; i < allcategories.length; i++) {
          print("$i. ${allcategories[i]}");
        }
        stdout.write("Enter A number for category display books in Fofa's Library: ");
        var categorynum = int.tryParse(stdin.readLineSync() ?? "");
        if (categorynum != null && categorynum >= 0 && categorynum < allcategories.length) {
          operationwbook.printBookswCategory(allcategories[categorynum]);
        } else {
          print("Oopss number choice For A categori.");
        }
        break;
  case "11":
   print("Thank You For your visiting Fofa's Library!..See You Next Time! ");
      exit(0);
  default:
    print("oops!!Invalid option. You can select From (1-10)");
      break;
    }
  }
}


  



void showsAllBooks(List<Map<String, dynamic>> library) {
  print("Review All Books:");
  for (var book in library) {
    bookInformation(book);
    print("*" * 33);
  }
}

void searchByAuthor(List<Map<String, dynamic>> library) {
  stdout.write("Enter the author's name so we can search it : ");
  var author = stdin.readLineSync();
  stdout.write('\x1B[38;5;31m');
  stdout.write('\x1B[1m');
  print("Books by $author:");
  stdout.write('\x1B[0m');
  for (var book in library) {
    if (book["authorbook"] == author) {
      bookInformation(book);
      print("*" * 33);
    }
  }
}

void searchByCategory(List<Map<String, dynamic>> library) {
  stdout.write("Enter the category so we can search it: ");
  var category = stdin.readLineSync();
  
  print("Books in the $category category:");
  for (var book in library) {
    if (book["category"] == category) {
      bookInformation(book);
      print("*" * 33);
    }
  }
}

void bookInformation(Map<String, dynamic> book) {
    print("ID: ${book["idbook"]}");
  print("Book Name: ${book["namebook"]}");
  print("Author: ${book["authorbook"]}");
  print("Category: ${book["category"]}");
  print("The Copies we have: ${book["copiesforbook"]}");
  print("Price: \$${book["pricebook"]}");
  if (book.containsKey("ratingofbook")) {
    print("Rating: ${book["ratingofbook"]}");
  }
}

void searchByNameBook(List<Map<String, dynamic>> library) {
  stdout.write("Enter the name of book so we can search it: ");
  var bookName = stdin.readLineSync();
  print("Books with the name '$bookName':");
  for (var book in library) {
    if (book["namebook"] == bookName){
      bookInformation(book);
      print("*" * 33);
    }
  }

}


  
  



