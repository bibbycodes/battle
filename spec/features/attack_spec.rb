feature 'Attacking a Player' do
  scenario 'Can Attack A player' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Dave attacked Robert!')
  end

  scenario 'Player 1 attacks' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    expect(page).to have_content 'Robert: 50HP'
  end
end