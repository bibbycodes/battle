feature 'Attacking a Player' do
  scenario 'Can Attack A player' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Dave attacked Robert!')
  end
end