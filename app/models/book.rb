class Book < ActiveRecord::Base
  has_many :authorships
  has_many :authors, through: :authorships

  attr_reader :author_tokens

  def author_tokens=(ids)
    self.author_ids = ids.split(",")
  end
end
