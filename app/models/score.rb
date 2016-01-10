class Score
  CONTROVERSIAL_THRESHOLD = 0.2 #to be filled

  def initialize(link)
    @upvotes = link.upvotes
    @downvotes = link.downvotes
    #to be completed
  end

  def upvotes
    @upvotes
  end

  def downvotes
    @downvotes
  end

  def value
    @upvotes - @downvotes
  end

  def controversial?
    #this code may not be correct
    score_delta_percentage < 0.2
  end

  def ==(other)
    other.upvotes == upvotes && other.downvotes == downvotes
  end

  alias :eql? :==

  def hash
    [upvotes, downvotes].hash
  end

  private

  def score_delta_percentage
    score_delta.to_f / high_score
  end

  def high_score
    [upvotes, downvotes].max
  end

  def score_delta
    value.abs
  end
end
