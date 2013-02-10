class EmailsController < ApplicationController 
  def index
    @emails = Emails.all
  end

  def show
    @email = Emails.find(params[:id])
  end

  def create
    @email = Emails.create(params[:emails])
  end  
end