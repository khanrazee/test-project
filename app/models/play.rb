# frozen_string_literal: true

class Play < ApplicationRecord
  validates :image_url, :tick, presence: true
end
