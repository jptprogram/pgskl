class PagesController < ApplicationController
  layout 'landing', only: :home

  def home
  end
end
