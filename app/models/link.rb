class Link < ActiveRecord::Base

	belongs_to :user
	
	validates :url, uniqueness: true
	validates :title, :body, presence: true
	validates :score, numericality: {only_integer: true}


end