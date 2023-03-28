class ApplicationMailer < ActionMailer::Base
  default from: "jptoro@backcheck.cl"
  layout "mailer"

  ADMIN_EMAILS = ['jptoro@backcheck.cl', 'rafa@backcheck.cl']
end
