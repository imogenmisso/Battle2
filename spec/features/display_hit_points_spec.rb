feature 'display hit points' do
  scenario 'Can see player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content('Player 2: 45/60HP')
  end
end
