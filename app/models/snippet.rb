class Snippet < ActiveRecord::Base

  belongs_to :user

  attr_accessible :gist_id, :name, :language, :description, :user_id

end
