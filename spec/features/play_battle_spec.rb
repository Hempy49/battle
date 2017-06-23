

describe "play.erb" do

let(:player1) do
  player1 = double(:player1)
  allow(player1).to receive(:name) { 'Player 1' }
  player1
end

let(:player2) do
  player2 = double(:player2)
  allow(player2).to receive(:name) { 'Player 2' }
  allow(player2).to receive(:reduce_votes) { 90 }
  player2
end


  feature 'Setting players' do
    scenario 'Can set player name' do
      sign_in_and_play
      expect(page).to have_text("Player 1")
    end
  end

  feature 'Hit points' do
    scenario 'Viewing players hit points' do
      sign_in_and_play
      expect(page).to have_content("Votes: 100")
    end
  end

  feature 'Attacking' do
    scenario 'Player 1 attacking Player 2' do
      sign_in_and_play
      click_button "High five!"
      expect(page).to have_content("#{player2.name} misses a high five!")
    end

    scenario 'Player 2 attacking Player 1' do
      attack_next_player
      expect(page).to have_content("#{player1.name} misses a high five!")
    end

  end

  feature 'Reducing player 1 votes' do
    scenario 'Player 2 reduces player 1 votes' do
    attack_player_1
      expect(page).to have_content("Votes: 90")
    end
  end
end
