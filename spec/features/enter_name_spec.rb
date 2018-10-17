feature 'enter name' do

  scenario 'Can fill in player names' do
    sign_in_and_play
    expect(page).to have_content('Jack vs Jill')
  end
end
