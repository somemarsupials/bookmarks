require './app/models/link.rb'

feature "see list of links on homepage" do
  scenario "visit homepage and see list of links" do
    Link.create(title: "theo linkedin", url: "linkedin.com/theo", tag: "to_hire")
    visit "/"
    expect(page).to have_content("linkedin.com/theo")
  end
end
