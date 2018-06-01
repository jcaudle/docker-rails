require 'rails_helper'

RSpec.feature "PageViews" do
  scenario "Seeing the number of page views" do
    visit '/welcome'
    expect(page.text).to match(/This page has been viewed [0-9]+ times?!/)
  end
end
