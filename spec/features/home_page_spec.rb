
describe "index.erb" do
  feature 'Entering players' do
    scenario 'Can enter their names in the appropriate fields' do
      visit('/')
      expect(page).to have_content 'Player 1'
    end
  end
end
