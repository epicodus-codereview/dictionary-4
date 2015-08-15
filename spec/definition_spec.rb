require('rspec')
require('definition')

describe('Definition') do
  # before do
  #   Definition.clear
  # end

  describe("#definition") do
    it('returns definition') do
      test_definition = Definition.new('to take action')
      expect(test_definition.definition()).to eq('to take action')
    end
  end

  # describe("#save") do
  #   it('adds definition to class array') do
  #     test_definition = Definition.new('break apart')
  #     test_definition.save()
  #     expect(Definition.all()).to eq([test_definition])
  #   end
  # end

  # describe(".all") do
  #   it('returns list of definitions') do
  #     expect(Definition.all()).to eq([])
  #   end
  # end

  # describe('.clear') do
  #   it('clears list of words') do
  #     test_definition = Definition.new('to randomize')
  #     test_definition2 = Definition.new('excessively angry')
  #     test_definition.save
  #     test_definition2.save
  #     Definition.clear()
  #     expect(Definition.all()).to eq([])
  #   end
  # end

  # describe('#id') do
  #   it('returns definition id when called') do
  #     test_definition = Definition.new('to police')
  #     test_definition.save
  #     test_definition2 = Definition.new('excessively angry')
  #     test_definition2.save
  #     expect(test_definition2.id).to eq(2)
  #   end
  # end

  # describe('.find') do
  #   it('finds and returns word in array based on ID number') do
  #     test_definition = Definition.new('to police')
  #     test_definition.save
  #     test_definition2 = Definition.new('tiger')
  #     test_definition2.save
  #     expect(Definition.find(2)).to eq(test_definition2)
  #   end
  # end
end
