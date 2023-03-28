module Mailer
  class ContactsController < ApplicationController

    def create
      @contact = Mailer::Contact.new(contact_params)
      if @contact.save
        ContactMailer.new_contact_to_user(@contact).deliver_now
        ContactMailer.new_contact_to_admin(@contact).deliver_now
        redirect_to root_path, notice: "Tu mensaje ha sido enviado con éxito."
      else
        redirect_to root_path, alert: "Tu mensaje no ha sido enviado."
      end
    end

    private

    def contact_params
      params.require(:mailer_contact).permit(:email, :message, :phone, :first_name, :last_name, :empresa)
    end
  end
end
