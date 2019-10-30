feature 'Enter names' do
  scenario 'Can Enter names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Robert'
    click_button('Submit')
    expect(page).to have_content('Dave vs Robert')
  end
end