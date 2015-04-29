require 'rails_helper'

describe Reference do

  testParameters = {author: 'Testington', title: 'Testing with Tests', year: 1999, publisher: 'Test Publisher'}
  moreTestParameters = {author: 'Testman', title: 'Testing and Tests', year: 2001, publisher: 'Test Publisher'}

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

  context 'when filtering entries by search parameter' do 
      
    it 'finds only matching entries' do
      searchParameters = "Testman"
      Reference.create(testParameters)
      Reference.create(moreTestParameters)
      foundReferences = Reference.search(searchParameters)
      expect(foundReferences.size).to eq(1)
    end

    it 'finds all entries with shared keyword' do
      searchParameters = "Test"
      Reference.create(testParameters)
      Reference.create(moreTestParameters)
      foundReferences = Reference.search(searchParameters)
      expect(foundReferences.size).to eq(2)
    end
  end

  describe 'has a bibtexify method' do
    it 'has a bibtexify method that returns a string' do
      reference = Reference.create(testParameters)
      expect(reference.bibtexify.is_a? String).to be(true)
    end
  end

end
