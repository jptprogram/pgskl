class PagesController < ApplicationController
  layout 'landing', only: :home

  def home
    @contact = Mailer::Contact.new
  end
end
