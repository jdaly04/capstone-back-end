# frozen_string_literal: true
class Product < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
end
