class Link < ActiveRecord::Base
validates :title, presence: :true
validates :url, presence: :true
has_many :scores
# before_create :image?
	

	def upvote
		self.upvotes +=1
	end

	def downvote
		self.downvotes +=1
	end

	def score
		Score.new(self)
	end

	def self.newest_first
		order("created_at DESC").all
	end

	def self.hottest_first
		Link.all.sort_by(&:sort)
	end

	def sort
		self.downvotes - self.upvotes 
	end

	def image?
		self.url.end_with?(".jpg", ".gif", ".png")
	end

end