feature 'display hit points' do
  scenario 'Can see player 2s hit points' do
    visit('/')
    fill_in(:player_1, with: 'Jack')
    fill_in(:player_2, with: 'Jill')
    click_button('Submit')
    expect(page).to have_content('Player 2: 45/60HP')
  end
end
