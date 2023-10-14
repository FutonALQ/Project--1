import 'dart:io';
class EditingOperation {
  List<Map<String, dynamic>> library;

  EditingOperation(this.library);

  void editiBookInfo() {
    stdout.write("Enter the book name you want to update: ");
    var bookName = stdin.readLineSync();

    for (int i = 0; i < library.length; i++) {
      if (library[i]["namebook"].toLowerCase().trim() == bookName!.toLowerCase().trim()) {
        print("Choose what you want to update:");
        print("1: Book Name");
        print("2: Author");
        print("3: Price");
        print("4: Not Yet");
        stdout.write("Enter your choice (1-4): ");
        var choice = stdin.readLineSync();

        switch (choice) {
          case "1":
            stdout.write("Enter A new name for this Book: ");
            var newTitle = stdin.readLineSync();
            library[i]["namebook"] = newTitle;
            print("Book name has been updated successfully!!! :).");
            break;
          case "2":
            stdout.write("Enter A new author For this Book: ");
            var newAuthor = stdin.readLineSync();
            library[i]["authorbook"] = newAuthor;
            print("Author name has been updated successfully!!! :)");
            break;
          case "3":
            stdout.write("Enter A  new price For this Book: ");
            var input = stdin.readLineSync();
            var newPrice = double.tryParse(input!);
            if (newPrice != null && newPrice >= 0) {
              library[i]["pricebook"] = newPrice;
              print("Price has been updated successfully!!! :)");
            } else {
              print("Oopss!! :( Sorry Invalid input for A new  price. Update fail.");
            }
            break;
          case "4":
            print("Not Yet To Update.");
            break;
          default:
            print("oops!!Invalid option. You can select From (1-4)");
            break;
        }
        return;
      }
    }
    print("Oopss!! The Book not found Fofa's library.");
  }
}



