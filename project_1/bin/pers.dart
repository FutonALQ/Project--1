class PurchaseOperation{
  List<Map<String, dynamic>> library;
  List<Map<String, dynamic>> purchaseLibrary = [];

  PurchaseOperation(this.library);

  void purchaseBook(String bookName, int numCopies) {
    for (int i = 0; i < library.length; i++) {
      if (library[i]["namebook"] == bookName) {
        if (library[i]["copiesforbook"] >= numCopies) {
          library[i]["copiesforbook"] -= numCopies;

          // Add the purchased book to the purchase history
          var purchasedBook = Map<String, dynamic>.from(library[i]);
          purchasedBook["numCopies"] = numCopies;
          purchaseLibrary.add(purchasedBook);

          print("Youu Purchase it's been successfuly!. Enjoy With your new book!");
        } else {
          print("oops Sorry!..there is not enough copies in  Fofa'slibrary.");
        }
        return;
      }
    }
    print("this Book not found in  Fofa's library.");
  }

  void displayInvoice() {
    if (purchaseLibrary.isEmpty) {
      print("Oops No purchases FOR YOU! yet..You can made A purchases :)");
      return;
    }

    print("Invoice:");
    double total = 0;

    for (var purchaseforBook in purchaseLibrary) {
      var name = purchaseforBook["namebook"];
      var price = purchaseforBook["pricebook"];
      var forCopies = purchaseforBook["numCopies"];
      var cost = price * forCopies;

      print("The Book: $name ($forCopies copies) - \$${price.toStringAsFixed(2)} each");
      print("The Total Cost for $name: \$${cost.toStringAsFixed(2)}");
      print("--------");
      total += cost;
    }

    print("Your Total Invoice Cost: \$${total.toStringAsFixed(2)} You'r always Welcome in Fofa's Library" );
  }
}
