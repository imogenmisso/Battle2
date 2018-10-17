feature 'attack' do
  scenario 'Can see confirmation message' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("You attacked your opponent!")
  end
end
