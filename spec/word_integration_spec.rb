require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('dictionary path', {:type => :feature}) do
  it('processes user entry and lists definitions') do
    visit('/')
    fill_in('word', :with => 'cat')
    click_button('Add Word')
    expect(page).to have_content('Cat')
    click_link('Cat')
    fill_in('definition', :with => 'feline animal')
    click_button('Add')
    expect(page).to have_content('Cat Feline animal Add a definition for this word Add Home')
  end
end
