class Location < ActiveRecord::Base

	validates :name, :picture_url, :review, presence: true

	def snippet
		self.review.truncate(25)
	end

end
