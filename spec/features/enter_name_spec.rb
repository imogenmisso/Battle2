feature 'enter name' do
  scenario 'Can fill in player names' do
    visit('/')
    fill_in :player_1, with: 'Jack'
    fill_in :player_2, with: 'Jill'
    click_button 'Submit'
    expect(page).to have_content 'Jack vs Jill'
  end
end
