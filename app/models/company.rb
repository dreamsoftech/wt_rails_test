class Company < ApplicationRecord
  validates :name, presence: true,
                   length: { minimum: 3, message: "Too short" }
end
