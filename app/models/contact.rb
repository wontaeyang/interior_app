class Contact < ActiveRecord::Base
  attr_accessible :address1, :address2, :contact, :dist, :email, :fax, :mfr, :specialty, :tel, :webpage
end
