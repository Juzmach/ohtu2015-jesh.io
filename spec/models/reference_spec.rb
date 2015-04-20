require 'rails_helper'

describe Reference do


  it 'has a type Book set correctly' do
    reference = Reference.create(reference_type: 'Book', author: 'A')
    expect(reference.reference_type).to eq('Book')
  end


  it 'has an author, title, publisher and a year' do
    reference = Reference.create(author: 'Author', title: 'T', publisher: 'P', year: 0, )
    expect(reference.valid?).to be(true)
  end

  it 'does not save without an author' do
    reference = Reference.create(author: '', year: 0)
    expect(reference.valid?).to be(false)
  end

  it 'does not save without a title' do
    reference = Reference.create(author: 'A', year: 0, title: '')
    expect(reference.valid?).to be(false)
  end

  it 'does not save without a publisher' do
    reference = Reference.create(author: 'A', title: 'T', year: 0, publisher: '')
    expect(reference.valid?).to be(false)
  end

  describe 'has a bibtexify method' do
    it 'has a bibtexify method that returns a string' do
      reference = Reference.create(author: 'Testington', title: 'Testing with Tests', year: 1999, publisher: 'Test Publisher')
      expect(reference.bibtexify.is_a? String).to be(true)
    end
  end

end
