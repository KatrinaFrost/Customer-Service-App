class Ticket < ApplicationRecord

  before_save :set_sentiment

  # scope :positive, ->{where(sentiment: :positive)}
  # scope :neautral, ->{where(sentiment: :neutral)}
  # scope :negative, ->{where(sentiment: :negative)}

  def set_sentiment
    self.sentiment = $analyzer.sentiment(content)
    self.score = $analyzer.score(content)
  end
end
