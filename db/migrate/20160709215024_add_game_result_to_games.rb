class AddGameResultToGames < ActiveRecord::Migration
  def change
    add_column :games, :game_result, :string
  end
end
