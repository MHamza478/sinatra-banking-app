class TodosController < ApplicationController
  get '/' do
    @account = Account.last
    erb :'todos/index'
  end

  get '/open-account' do
    erb :'todos/bank_account'
  end

  post '/open-account' do  
    @account = Account.last
    if @account.present?
      @account.update(params)
      redirect '/'
    else
      Account.create(params)
      redirect '/'
    end
  end

  get '/deposit-amount' do
    erb :'todos/deposit'
  end

  post '/deposit-amount' do
    @todo = Account.find_by(userid:params[:userid])
    if @todo.present?
      amount = @todo.amount.to_i + params[:amount].to_i
      @todo.update(amount: amount)
      redirect '/'
    else
      redirect '/deposit-amount'
    end
  end

  get '/withdraw-amount' do
    erb :'todos/withdraw'
  end

  post '/withdraw-amount' do
    @todo = Account.find_by(userid:params[:userid])
    if @todo.present?
      amount = @todo.amount.to_i - params[:withdraw].to_i
      @todo.update(amount: amount)
      redirect '/'
    else
      redirect '/deposit-amount'
    end
  end

  post '/' do 
    @todo = Account.create(params)
    redirect '/'
  end

  delete '/:id' do
    id = params[:id]
    Account.destroy(id)
    redirect '/'
  end

end