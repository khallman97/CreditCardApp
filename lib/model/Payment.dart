class Payment {
  final String id;
  final String amount;
  final String dueDate;
  final String image;

  const Payment({this.id , this.amount , this.dueDate , this.image});
  
}



List<Payment> payments = [
  const Payment(
    id: "1",
    amount: "\$120.50",
    dueDate: "June 4",
    image: "assets/img/social.png",
  ),
  const Payment(
    id: "2",
    amount: "\$7.00",
    dueDate: "April 27",
    image: "assets/img/food.png",
  ),
  const Payment(
    id: "3",
    amount: "\$60.00",
    dueDate: "July 16",
    image: "assets/img/transit.png",
  ),
  const Payment(
    id: "4",
    amount: "\$20.00",
    dueDate: "August 6",
    image: "assets/img/transit.png",
  ),
  const Payment(
    id: "5",
    amount: "\$34.67",
    dueDate: "May 4",
    image: "assets/img/social.png",
  ),
];

