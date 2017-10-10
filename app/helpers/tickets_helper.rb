module TicketsHelper
  def color_from_score(score)
    case

    # Sentiment Score
    when score < 0 then 'negative'
    when score == 0 then 'neutral'
    when score > 0 then 'positive'
    end
  end
end
