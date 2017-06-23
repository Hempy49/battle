def sign_in_and_play
  visit('/')
  fill_in "Player 1", :with => "Player 1"
  fill_in "Player 2", :with => "Player 2"
  click_button "LET'S BATTLE!"
end

def attack_player_1
  sign_in_and_play
  click_button "High five!"
  visit('/play')
end

def attack_next_player
  sign_in_and_play
  click_button "High five!"
  click_button "Continue!"
  click_button "High five!"
end

def attack_to_zero
  sign_in_and_play
  3.times do
    click_button "High five!"
    click_button "Continue!"
  end
end
