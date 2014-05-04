class BalancesController < ApplicationController
  def index
    @balances = Balance.all
  end

  def new
  end

  def create
    @balance = Balance.new(balance_params)
    @balance.save
    redirect_to root_path
    end

  def show
    @balance = Balance.find(params[:id])
  end

  def edit
    @balance = Balance.find(params[:id])
  end

  def update
    @balance = Balance.find(params[:id])

    @balance.update(balance_params)
    redirect_to balances_path
  end

  def destroy
    @balance = Balance.find(params[:id])
    @balance.destroy
    redirect_to balances_path
  end

  private
    def balance_params
      params.require(:balance).permit(:description, :debit, :credit, :balance)
    end

end
