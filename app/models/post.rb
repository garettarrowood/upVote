class Post < ActiveRecord::Base
  has_many :votes

  def vote_score
    score = 0
    votes.each do |vote|
      score = score + vote.vote_value
    end
    score
  end
end
