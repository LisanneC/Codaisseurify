require 'rails_helper'

feature 'Manage songs', js: true do

  scenario 'add song' do
    visit songs_path

    fill_in 'song_title', with: 'Icecream'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('Icecream')
  end


end
