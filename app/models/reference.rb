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

  ##
  # Bibtexify
  # Prints out the model in BibTeX format. Reason why every line is put in separately is for later use, when we have
  # multiple different types that have different formats.
  def bibtexify
  	bibtex = "@#{self.reference_type}{"
  	bibtex += "#{self.author.split(' ')[0]}#{self.year},\n"
  	bibtex += "	author = #{self.author},\n"
  	bibtex += "	title = #{self.title},\n"
  	bibtex += "	year = #{self.year},\n"
  	bibtex += "	publisher = #{self.publisher}\n"
  	bibtex += "}"
  	bibtex
  end

  ##
  # Search
  # Executes a query, filtering references that have the given parameter as a field or part of a field
  # Checks fields author, publisher, year

  def self.search(search)
    if search
      where('title LIKE ? OR author LIKE ? OR publisher LIKE ? OR year LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      find(:all)
    end
  end

end
