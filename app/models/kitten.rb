class Kitten < ApplicationRecord

  def as_json(options={})
    super(:only => [:name, :age, :cuteness])
  end

end
