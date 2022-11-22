# frozen_string_literal: true

class Pet < ApplicationRecord
  validates :name, :genre, :specie, :color,
            :brees, :particular_sings, presence: true
  validates :genre, inclusion: { in: %w[female male],
                                 message: "%<value>s isn't valid in list" }
end
