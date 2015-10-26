class Tribute < ActiveRecord::Base
	validates :saying, :presence => true, :length  => { :maximum => 1400, :minimum => 3 }
	validates :contributor, :presence => true, :length => { :maximum => 60, :minimum => 3}

	belongs_to :user
end

