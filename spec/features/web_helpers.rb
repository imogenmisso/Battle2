def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Jack')
  fill_in(:player_2, with: 'Jill')
  click_button('Submit')
end
