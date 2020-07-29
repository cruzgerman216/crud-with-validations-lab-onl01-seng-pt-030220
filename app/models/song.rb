class Song < ActiveRecord::Base
   validates :title, presence: true
   validates :release, presence: true
end
