module DefaultPageSettings
	extend ActiveSupport::Concern

	included do
		before_action :set_title
	end

	def set_title
		@page_title = "David Ieron Smith"
		@seo_keywords = "David Ieron Smith portfolio blog information programming code"
	end		
end