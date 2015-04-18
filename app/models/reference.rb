##
# Reference model

class Reference < ActiveRecord::Base

  validates :author, presence: true

  validates :year, presence: true,
                  numericality: { greater_than_or_equal_to: 0,
                                  less_than_or_equal_to: 2015,
                                  only_integer: true}

  validates :title, presence: true

  validates :publisher, presence: true

end
