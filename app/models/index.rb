class Index < ActiveRecord::Base
	has_many :films
	has_many :actors
	has_many :articles
end
