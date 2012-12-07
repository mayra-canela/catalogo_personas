class PeopleController < ApplicationController
  def index
   @people= Person.all
  end

  def update
@person = Person.find(params[:id])
    @person.update_attributes(params[:person])
    redirect_to people_path
  end

  def edit
  @person = Person.find(params[:id])
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
