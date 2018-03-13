class Language < ApplicationRecord
  has_many :developer_languages, dependent: :destroy
  has_many :developers, through: :developer_languages

  # NOTE: This is extra because there's validation on the db level.
  #   But it's nice to have to show validation errors to the users.
  validates :code, presence: true, uniqueness: true
end
