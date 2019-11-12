class Api::ContactsController < ApplicationController
  def first_contact_method
    @contact = Contact.first
    render "first_contact.json.jb"
  end

  def all_contact_method
    @contact = Contact.all
    render "all_contacts.json.jb"
  end


  def index
    @contact = Contact.all 
    render "index.json.jb"
  end 

  def create 
    @Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
    ) 

    @Contact.save 
    render "create.json.jb"
    end 

    def show
      @contact = Contact.find_by(id: params[:id])
      render "show.json.jb"

    def update 
      @contact = Contact.find_by(id: params[:id])
      @contact.first_name = params[:first_name] || contact.first_name
      @contact.last_name = params[:last_name] || contact.last_name
      @contact.email = params[:email] || contact.email
      @contact.phone_number = params[:phone_number] || contact.phone_number
      @contact.save
      render "show.json.jb"
    end 

    def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render json: { message: "Contact successfully destroyed!" }
  end
end



