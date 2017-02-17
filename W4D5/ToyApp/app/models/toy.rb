class Toy < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :name, uniqueness: { scope: :toyable }

  belongs_to :toyable, polymorphic: true
end
