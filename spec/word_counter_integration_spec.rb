require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe("The path to the word_counter page", {:type => :feature}) do
  it("Presents the user with two text forms and a submit button that leads to a page displaying the return value of word_counter when it is called using the two inputs.") do
    visit('/')
    fill_in("search_word", :with => "hotel")
    fill_in("phrase_to_search", :with => "The Grand Central Hotel was a bad hotel, so we went to the Riverside Hotel.")
    click_button("submit")
    expect(page).to(have_content("3"))
  end
end
