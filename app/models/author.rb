class Author < ActiveRecord::Base
  has_many :authorships
  has_many :books, through: :authorships
  default_scope ->{order(:name)}
  scope :search, ->(query){ where("name like ?", "%#{query}%") if query.present?}
end
