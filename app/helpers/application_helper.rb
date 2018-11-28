module ApplicationHelper
  def prestation_rating(prestations)
    notes = prestations.map(&:rating)
    (notes.sum / notes.size).round
  end
end
