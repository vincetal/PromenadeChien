class Stroll < ApplicationRecord
  belongs_to :city
  belongs_to :dog_sitter
  has_many :join_table_stroll_dogs
  has_many :dogs, through: :join_table_stroll_dogs
end
