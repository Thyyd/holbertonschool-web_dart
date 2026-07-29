void outer(String name, String id) {
  String inner() {
    List<String> fullname = name.split(" ");
    String firstname = fullname[0];
    String lastname = fullname[1];
    return("Hello Agent ${lastname.substring(0, 1)}.$firstname your id is $id");
  }

  print(inner());
}