class Account
  attr_accessor :numIncorrectTries, :balance

  def initialize(password)
    @password = password
    @balance = 30
    @numIncorrectTries = 0
  end

  def validate_password(password)
    if @password == password
      return true
    else
      return false
    end
  end

  def validate_amount(withdraw_amount)
      if withdraw_amount <= @balance
        @balance -= withdraw_amount
        return true
      else
        return false
      end
  end
end