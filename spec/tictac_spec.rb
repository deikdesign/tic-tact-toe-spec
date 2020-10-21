require_relative '../lib/logic'

describe Game do
  let(:new_game) { Game.new }
  let(:player) { Player.new('Deyan', 'X') }
  describe '#make_move' do
    it 'check if it is correct' do
      expect(new_game.make_move(player.team, 4)). to eql false
    end
    it 'Check if it is a string' do
      expect(new_game.make_move(player.team, 'string')).to eql false
    end
    it 'check if the number is from 1 to 9' do
      expect(new_game.make_move(player.team, 12)).to eql false
    end
  end

  describe '#check_if_win?' do
    it 'Check if there is no winner' do
      expect(new_game.check_if_win?).to eql false
    end
  end

  describe '#check_if_move_done?' do
      it 'Check if there is a move' do
       expect(new_game.check_move_done?(7)).to eql false
      end

      it 'verify move' do
      expect(new_game.check_if_move_done?(3)).to eql true
      end
end