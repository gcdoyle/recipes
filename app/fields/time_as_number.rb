require "administrate/field/base"

class TimeAsNumber < Administrate::Field::Base
  def to_s
    data
  end
end
