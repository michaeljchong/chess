require_relative '../lib/chess'

describe Game do
  subject(:game) { described_class.new }
  describe '#valid_input?' do
    context 'valid position input' do
      it 'is formatted with a lowercase letter followed by a number' do
        expect(game.valid_input?('a1')).to be_truthy
      end
      it 'is at the 8th column from the left and 8th row from the bottom' do
        expect(game.valid_input?('h8')).to be_truthy
      end
    end

    context 'invalid position input' do
      it 'is formatted with an uppercase letter' do
        expect(game.valid_input?('A8')).to be_falsey
      end
      it 'is longer than 2 characters' do
        expect(game.valid_input?('a 8')).to be_falsey
      end
      it 'is out of bounds for the column' do
        expect(game.valid_input?('k1')).to be_falsey
      end
      it 'is out of bounds for the row' do
        expect(game.valid_input?('a0')).to be_falsey
      end
    end
  end
end
