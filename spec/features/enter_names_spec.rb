feature 'Enter names' do
  scenario 'Can Enter names' do
    sign_in_and_play
    expect(page).to have_content('Dave vs Robert')
  end
end