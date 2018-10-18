class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumbnail_image

	#def self.java
	#	where(subtitle: 'Java')
	#end

	scope :java, -> { where(subtitle: 'Java')}
	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumbnail_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
end
