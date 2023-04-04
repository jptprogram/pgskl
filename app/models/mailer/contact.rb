# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  email      :string
#  empresa    :string
#  first_name :string
#  last_name  :string
#  message    :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Mailer
  class Contact < ApplicationRecord
  end
end
