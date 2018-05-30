require 'rails_helper'

describe 'api/v1/games/:id' do
  context 'user sends get request' do
    it 'should receive the appropriate response' do

      game = create(:game)

      get "/api/v1/games/#{game.id}"

      expect(response).to be_success

      json_game = JSON.parse(response.body)

      expect(json_game['game_id']).to eq(game.id)
      expect(json_game['scores'].first['user_id']).to eq(1)
      expect(json_game['scores'].first['score']).to eq(15)
      expect(json_game['scores'].second['user_id']).to eq(2)
      expect(json_game['scores'].second['score']).to eq(16)
    end
  end
end
