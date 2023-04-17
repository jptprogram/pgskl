class ApplicationMailer < ActionMailer::Base
  default from: "sklmscontact@gmail.com"
  layout "mailer"

  ADMIN_EMAILS = ['ventas@sklmaquinarias.cl', 'contacto@sklmaquinarias.cl']
end
