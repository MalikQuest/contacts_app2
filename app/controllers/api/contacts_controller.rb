class Api::ContactsController < ApplicationController
  def first_contact_method
    @contact = Contact.first

    if params[:search]
      @contact = @contacts.where("first_name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:full_name]
      @contact = @contacts.where 
      contact.find_by(name:"John")
    end 

    if params[:sort] 

     @contact = @contacts.order(:id => :asc)

      render "index.json.jb"
    else
     render json: []
    end 
  end

    render "first_contact.json.jb"
  end

  def all_contact_method
    @contact = Contact.all
    render "all_contacts.json.jb"
  end


  def index
    if current_user
      @contacts = current_user.contacts
    
    render "index.json.jb"
  end 

  def create 
    @Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      user_id: current_user.id,
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
      @contact.middle_name = params[:middle_name] || contact.middle_name
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



