require "administrate/field/base"

class StringLinkField < Administrate::Field::Base
  def to_s
    data
  end
end
