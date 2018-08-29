class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1}
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	#Forces validation of specified items. This will prevent items being made with nil values and thus prevent nil errors
  	validates_presence_of :title, :body

  	belongs_to :topic
end
