class PagesController < ApplicationController
  def home
    @contact = Mailer::Contact.new
  end
end
