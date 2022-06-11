class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
    @person.build_address
    @person.pets.build
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  private
  def person_params
    params.require(:person).permit(:name, address_attributes: [:id, :street, :number], pets_attributes: [:id, :name, :breed])
  end
end
