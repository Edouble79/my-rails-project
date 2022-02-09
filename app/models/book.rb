# app/models/book.rb
class Book < ApplicationRecord
  has_and_belongs_to_many :genres
  belongs_to :author
  # ... the rest of the class ...
end
