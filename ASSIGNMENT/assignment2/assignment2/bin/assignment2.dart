void main(List<String> arguments) {
  String salary = "officworker";

  String employyee = "0";

  if (salary == "manager") {
    employyee = "10 Lakh";
  } else if (salary == "supervisor") {
    employyee = " 8 Lakh";
  } else if (salary == "salesman") {
    employyee = " 6 Lakh";
  } else if (salary == "accountant ") {
    employyee = " 4 Lakh";
  } else if (salary == "officworker") {
    employyee = " 2 Lakh";
  }

  print(employyee);

  switch (salary) {
    case "manager":
      employyee = "10 Lakh";

      break;

    case "supervisor":
      employyee = "8 Lakh";

      break;

    case "salesman":
      employyee = "6 Lakh";

      break;

    case "accountant":
      employyee = "4 Lakh";
      break;

    case "officworker":
      employyee = "2 Lakh";

      break;

    default:
  }

  print(employyee);
}
