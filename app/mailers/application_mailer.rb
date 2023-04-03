class ApplicationMailer < ActionMailer::Base
  default from: "jptoro@backcheck.cl"
  layout "mailer"

  ADMIN_EMAILS = ['ventas@sklmaquinarias.cl', 'contacto@sklmaquinarias.cl']
end
