class ContactMailer < ApplicationMailer
  def new_contact_to_user(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'SKL te saluda!')
  end

  def new_contact_to_admin(contact)
    @contact = contact
    mail(to: ApplicationMailer::ADMIN_EMAILS, subject: 'Nueva Solicitd de Contacto')
  end
end
