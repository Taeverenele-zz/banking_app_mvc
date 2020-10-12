require_relative '../models/account'
require_relative '../views/account_view'

class AccountController

  def initialize
    @account_model = Account.new('password')
    @account_view = AccountView.new
  end

  def run
    @account_view.welcome_msg
    while @account_model.numIncorrectTries < 3
      user_password_input = @account_view.get_password
      if @account_model.validate_password(user_password_input)
        loop do
          @account_view.show_options
          user_option = @account_view.get_option
          case user_option
          when 1
            @account_view.show_balance(@account_model.balance)
          when 2
            deposit_amount = @account_view.get_deposit_amount
            @account_model.balance += deposit_amount
            @account_view.show_balance(@account_model.balance)   
          when 3
            withdraw_amount = @account_view.get_withdraw_amount
            if @account_model.validate_amount(withdraw_amount)
              @account_view.show_withdraw_and_balance(withdraw_amount, @account_model.balance)
            else 
                @account_view.insufficient_funds(withdraw_amount)
            end
          when 4
            @account_view.farewell_msg
            return
          end
        end
      else
        @account_view.incorrect_password
      end
      @account_model.numIncorrectTries += 1
    end
    @account_view.exceeded_attempts
    @account_view.farewell_msg
  end
end