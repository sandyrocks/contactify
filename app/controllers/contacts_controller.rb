class ContactsController < ApplicationController
  before_action :set_contact, except: [:index, :new, :create]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
    @contact.build_photo
  end

  def show
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save(validate: false)
      redirect_to @contact
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:first_name, 
                                      :last_name,
                                      :primary_email_id, 
                                      :secondary_email_id,
                                      :mobile_number,
                                      :city, 
                                      :state, 
                                      :country, photo_attributes: [:image])
    end

    def set_contact
      @contact = Contact.find(params[:id])
    end
end
