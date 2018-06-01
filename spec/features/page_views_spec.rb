require 'rails_helper'

RSpec.feature "PageViews" do
  scenario "Seeing the number of page views" do
    visit '/welcome'
    expect(page.text).to match(/This page has been viewed [0-9]+ times?!/)
  end

  scenario "The page is enhanced with JavaScript on", js: true do
    visit '/welcome'
    expect(page).to have_text("ENHANCED!")
  end
end
