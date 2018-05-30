require 'rails_helper'

describe 'api/v1/games/:id' do
  context 'user sends get request' do
    it 'should receive the appropriate response' do

      game = Game.create()
      get '/api/v1/games/1'

      expect(response).to be_success

      game = JSON.parse(response.body)

      expect(game['game_id']).to eq(1)
      expect(game['scores'].first['user_id']).to eq(1)
      expect(game['scores'].first['score']).to eq(15)
      expect(game['scores'].second['user_id']).to eq(2)
      expect(game['scores'].second['score']).to eq(16)
    end
  end
end
