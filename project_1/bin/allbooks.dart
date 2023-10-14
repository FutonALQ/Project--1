 List<Map<String, dynamic>> libraryofallbooks = [
    {
      "idbook" :'ID-1001',
      "namebook" : "A thousand splendid suns ",
      "authorbook": "Khaled hosseini",
      "category": "Classic",
      "copiesforbook": 8,
      "pricebook": 49.00,
      "ratingofbook": "4.6 out of 5"
    },
    {
      "idbook" :'ID-1002',
      "namebook": 'White nights',
      "authorbook": 'Dostoyevsky',
      "category": "Classic",
      "copiesforbook": 5,
      "pricebook": 29.00,
      "ratingofbook": "4.4 out of 5"
    },
    {
      "idbook" :'ID-1003',
      "namebook": 'Kafka on the Shore',
      "authorbook": 'Haruki Murakami',
      "category": "Fiction",
      "copiesforbook": 7,
      "pricebook": 72.05,
      "ratingofbook": "4.3 out of 5"
    },
    {
      "idbook" :'ID-1004',
      "namebook": 'One Hundred Years of SolitudeNovel',
      "authorbook": 'Gabriel García Márquez',
      "category": "Fairy tale",
      "copiesforbook": 11,
      "pricebook": 60.00,
      "ratingofbook": "3.6 out of 5"
    },
    {
      "idbook" :'ID-1005',
      "namebook": '1984',
      "authorbook": 'george orwell',
      "category": "Fantasy",
      "copiesforbook": 5,
      "pricebook": 49.00,
      "ratingofbook": "3.9 out of 5"
    },
    {
      "idbook" :'ID-1006',
      "namebook": 'And Everything Disappeared',
      "authorbook": 'Agatha Christie',
      "category": "Thriller",
      "copiesforbook": 9,
      "pricebook": 29.00,
      "ratingofbook": "4.0 out of 5"
    }
  ];
 /* print("Hello to the fofa libary !");
   while (true) {
    print("Choose an action:");
    print("1. Query Books by Title");
    print("2. Query Books by Author");
    print("3. Query Books by Category");
    print("4. all the books");
    print("5. Exit");

    print("Enter your choice (1-4): ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        queryBooksByTitle(libraryofallbooks);
        break;
      case "2":
        queryBooksByAuthor(libraryofallbooks);
        break;
      case "3":
        queryBooksByCategory(libraryofallbooks);
        break;
      case"4":
       allthebooks(libraryofallbooks);
       break;
      case "5":
        print("Exiting the application.");
        exit(0);
        // ignore: dead_code
        break;
      default:
        print("Invalid choice. Please select a valid option (1-4).");
        break;
    }
  }
}

void allthebooks(List<Map<String, dynamic>> library ) {
  print("All Books in the library:");
  for (var book in library) {
    printBookInfo(book);
    print("--------");
  
  }
}
void printBookInfo(Map<String, dynamic> book) {
  print("ID: ${book["idbook"]}");
  print("Title: ${book["namebook"]}");
  print("Author: ${book["authorbook"]}");
  print("Category: ${book["category"]}");
  print("Available Copies: ${book["copiesforbook"]}");
  print("Price: \$${book["pricebook"]}");
  print("Rating: ${book["ratingofbook"]}");
}


void queryBooksByTitle(List<Map<String, dynamic>> library) {
  stdout.write("Enter title to search for: ");
  var query = stdin.readLineSync();

  print("Books matching '$query':");
  for (var book in library) {
    if (book["namebook"].toLowerCase().contains(query)) {
      printBookInfo(book);
    }
  }
}

void queryBooksByAuthor(List<Map<String, dynamic>> library) {
  stdout.write("Enter author to search for: ");
  var query = stdin.readLineSync();

  print("Books by '$query':");
  for (var book in library) {
    if (book["authorbook"].toLowerCase().contains(query)) {
      printBookInfo(book);
    }
  }
}

void queryBooksByCategory(List<Map<String, dynamic>> library) {
  stdout.write("Enter category to search for: ");
  var query = stdin.readLineSync();

  print("Books in '$query' category:");
  for (var book in library) {
    // Assuming "category" is not included in the original data, you can add it if needed.
    // For now, let's filter by the author's name if it contains the query.
    if (book["authorbook"].toLowerCase().contains(query)) {
      printBookInfo(book);
    }
  }

}  */






