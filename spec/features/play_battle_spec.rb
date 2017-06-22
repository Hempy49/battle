describe "play.erb" do

  feature 'Setting players' do
    scenario 'Can set player name' do
      sign_in_and_play
      expect(page).to have_text("Simon")
    end
  end

  feature 'Hit points' do
    scenario 'Viewing players hit points' do
      sign_in_and_play
      expect(page).to have_content("Votes: 100")
    end
  end

  feature 'Attacking' do
    scenario 'Player 2 attacking Player 1' do
      sign_in_and_play
      click_button "High five!"
      expect(page).to have_content("misses a high five!")
    end
  end

  # feature 'Reducing player 1 votes' do
  #   scenario 'Player 2 reduces player 1 votes' do
  #   attack_player_1
  #     expect(page).to have_content("Votes: 90")
  #   end
  # end
end
