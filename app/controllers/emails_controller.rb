class EmailsController < ApplicationController 
  
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def fetch
    Email.fetch_new
  end

end