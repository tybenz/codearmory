class Snippet < ActiveRecord::Base

  belongs_to :user
  acts_as_taggable_on :categories
  acts_as_taggable_on :tags

  attr_accessible :gist_id, :name, :language, :description, :user_id, :category_list, :tag_list

end
