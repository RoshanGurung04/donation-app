class User {
  String name;
  String dateBS;
  String dateAD;
  String gender;
  String phonenum;
  String email;
  String occupation;
  String address;
  String documentType;
  User(this.name, this.dateBS, this.dateAD, this.gender, this.phonenum,
      this.email, this.occupation, this.address, this.documentType);
}

User u1 = new User('John Doe', '2049-5-11', '1992-9-23', 'Male', '98xxxxxxx',
    'JohnDoe@email.com', 'Businessman', 'Kathmandu,Nepal', 'Citizenship');
