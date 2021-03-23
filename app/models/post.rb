class Post < ApplicationRecord
  with_options presence: true do
    validates :execercisedate, :execercise1
  end

  belongs_to :user
  has_one_attached :image
end
