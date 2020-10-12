class AccountView

  def initialize
  end

  def welcome_msg
    puts "Welcome to the banking app"
  end 

  def get_password
    puts "Please enter your password: "
    return gets.strip
  end

  def incorrect_password
    puts "You have entered an incorrect password"
  end

  def show_options
    puts "What would you like to do (1-4): "
    puts "(1) Balance"
    puts "(2) Deposit"
    puts "(3) Withdraw"
    puts "(4) Exit"
  end

  def get_option
    return gets.to_i
  end

  def show_balance(balance)
    puts "Your current balance is $#{balance}"
  end

  def get_deposit_amount
    puts "How much would you like to deposit?"
    return gets.chomp.to_f
  end

  def get_withdraw_amount
    puts "How much would you like to withdraw?"
    return gets.chomp.to_f
  end

  def show_withdraw_and_balance(amount, balance)
    puts "You have withdrawn $#{amount} and your new balance is $#{balance}"
  end

  def insufficient_funds(amount)
    puts "You don't have enough money to withdraw $#{amount}"
  end

  def exceeded_attempts
    puts "You have exceeded number of attempts."
  end

  def farewell_msg
    puts "Thank you, come again!"
  end

end