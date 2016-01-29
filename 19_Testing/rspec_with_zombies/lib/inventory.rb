class Item < ActiveRecord::Base
  belongs_to :zombie
  belongs_to :weapon
end