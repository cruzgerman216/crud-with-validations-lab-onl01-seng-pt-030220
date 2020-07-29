class Song < ActiveRecord::Base
   validates :title, presence: true
   validates :release_year, presence: true, if: :released?
   validate  :future
   def future
     if release_year > date.today.year
       errors.add(:release_year, "future")
     end
   end


end
