class Person < ActiveRecord::Base

  has_many :things

  after_update { self.things.each(&:touch) }

  include ElasticsearchSearchable

end
