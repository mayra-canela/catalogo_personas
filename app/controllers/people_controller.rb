class PeopleController < ApplicationController
  def index
   @people= Person.all
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
    redirect_to people_path
    else
      flash[:alert]="Something went wrong #{@person.errors.messages}"
      redirect_to edit_person_path(@person.id)
    end
  end

  def edit
  @person = Person.find(params[:id])
  end

  def new
    @person= Person.new
  end
  
  def create 
   @person = Person.new(params[:person])
   if @person.save
    redirect_to people_path
   else
      redirect_to new_person_path
      flash[:alert]="Something went wrong #{@person.errors.messages}"

  end

  end

  def destroy 
    @person = Person.destroy(params[:id])
    redirect_to people_path
  end


  def show
   @person = Person.find(params[:id])
  end
end
