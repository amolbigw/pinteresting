class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :globalcontact
end
