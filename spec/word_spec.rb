require('rspec')
require('word')

describe('Word') do
  before do
    Word.clear
  end

  describe("#name") do
    it('returns name of word') do
      test_word = Word.new('jump')
      expect(test_word.name()).to eq('jump')
    end
  end

  describe("#save") do
    it('adds word to class array') do
      test_word = Word.new('jump')
      test_word.save()
      expect(Word.all()).to eq([test_word])
    end
  end

  describe(".all") do
    it('returns list of words') do
      expect(Word.all()).to eq([])
    end
  end

  describe('.clear') do
    it('clears list of words') do
      test_word = Word.new('random')
      test_word2 = Word.new('tiger')
      test_word.save
      test_word2.save
      Word.clear()
      expect(Word.all()).to eq([])
    end
  end

  describe('#id') do
    it('returns word id when called') do
      test_word = Word.new('random')
      test_word.save
      test_word2 = Word.new('tiger')
      test_word2.save
      expect(test_word2.id).to eq(2)
    end
  end

  describe('.find') do
    it('finds and returns word in array based on ID number') do
      test_word = Word.new('random')
      test_word.save
      test_word2 = Word.new('tiger')
      test_word2.save
      expect(Word.find(2)).to eq(test_word2)
    end
  end
end
