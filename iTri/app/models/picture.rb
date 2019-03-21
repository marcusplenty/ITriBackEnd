class Picture < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :spec, required: false
end
