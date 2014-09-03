class Thing < ActiveRecord::Base

  belongs_to :person, touch: true

  include ElasticsearchSearchable

end
