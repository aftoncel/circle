class WelcomeController < ApplicationController
  def index
  	@balances = Balance.all
  end
end
