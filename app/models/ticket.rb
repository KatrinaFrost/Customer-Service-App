class Ticket < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :customer
  before_save :set_sentiment

  # rule needs to be added to assign a ticket automatically to staff members id.
  # for a basic implementation - always default the id to main admin's id.

  # scope :positive, ->{where(sentiment: :positive)}
  # scope :neautral, ->{where(sentiment: :neutral)}
  # scope :negative, ->{where(sentiment: :negative)}

  def set_sentiment
    self.sentiment = $analyzer.sentiment(content)
    self.score = $analyzer.score(content)
  end
end
