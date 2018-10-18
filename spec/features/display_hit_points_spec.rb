feature 'display hit points' do
  scenario 'Can see player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content($game.player2.score)
  end
end
