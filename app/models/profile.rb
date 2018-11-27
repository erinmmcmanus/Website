class Profile < ApplicationRecord
	has_many :comments, dependent: :destroy

	has_attached_file :image

	validates :flname, presence: true

end
