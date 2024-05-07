import 'dart:math';

class Bankaccount {
  Bankaccount({required this.accountHolder, required this.balance})
      : accountNumber = createAccount();

  final int accountNumber;
  final String accountHolder;
  double balance;

  static int createAccount() {
    final random = Random();
    int randomNum = random.nextInt(9999999) + 1000000;
    final date = DateTime.now().millisecond;
    int number = int.parse(randomNum.toString() + date.toString());
    return number;
  }

  deposit(double amount) {
    if (amount <= 0.0) {
      throw ArgumentError('enter a number');
    } else {
      balance = balance + amount;
    }
  }

  withDraw(double amount) {
    if (balance < amount) {
      throw ArgumentError('Insufficient Balance');
    } else {
      balance = balance - amount;
    }
  }

  String getAccountInfo() {
    return 'Account Number : $accountNumber\n'
        'Account Holder : $accountNumber\n'
        'Account balance : ${balance.toStringAsFixed(2)}';
  }
}
