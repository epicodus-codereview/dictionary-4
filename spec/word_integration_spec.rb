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
  end
end
