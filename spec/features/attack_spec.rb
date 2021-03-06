feature 'attack' do
  scenario 'Can see confirmation message' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("You attacked your opponent!")
  end

  scenario 'Reduces opponents score by 10' do
    sign_in_and_play
    expect { click_button('Attack') }.to change{ $game.player2.score }.by(-10)
  end

  scenario 'Score is 0, player2 dies' do
    sign_in_and_play
    11.times{ click_button('Attack') }
    expect(page).to have_content  "#{$game.player2.name} has died"
  end
end
