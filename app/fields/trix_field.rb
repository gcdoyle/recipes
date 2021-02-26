require "administrate/field/text"

class TrixField < Administrate::Field::Text
  def to_s
    data
  end
end
