class PeopleController < ApplicationController
  def index
   @people= Person.all
  end

  def update
  end

  def edit
  end

  def new
    @person= Person.new
  end
  
  def create
   @person = Person.new(params[:person])
   @person.save
   redirect_to people_path
  end

  def destroy 
    @person = Person.destroy(params[:id])
    redirect_to people_path
  end


  def show
   @person = Person.find(params[:id])
  end
end
