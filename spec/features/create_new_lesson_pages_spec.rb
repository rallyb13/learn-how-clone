require 'rails_helper'

describe "the create new lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on "Create New Lesson"
    fill_in "Name", :with => "Test lesson"
    fill_in "Content", :with => "This is the test lesson content."
    click_on "Create Lesson"
    expect(page).to have_content "Lessons"
  end

  it "throws an error when form isn't filled out" do
    visit new_lesson_path
    click_on "Create Lesson"
    expect(page).to have_content 'errors'
  end
end
