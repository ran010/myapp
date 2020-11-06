class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message,:phone_number)
  end
end
