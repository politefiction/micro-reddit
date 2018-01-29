class User < ApplicationRecord
	before_save { name.downcase }
	validates :name, presence: true, length: { maximum: 25 }, uniqueness: { case_sensitive: false, message: "someone already beat you to it" }
	#has_many_posts
	#has_many_comments
end
