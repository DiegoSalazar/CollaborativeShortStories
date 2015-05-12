class Phrase < ActiveRecord::Base
  has_many :phrase_collabs, class_name: 'Phrase'
  belongs_to :phrase, foreign_key: 'parent_id'
end
