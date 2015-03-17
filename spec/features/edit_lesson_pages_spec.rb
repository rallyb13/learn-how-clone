require 'rails_helper'

describe "the edit lesson process" do
  it "edits a lesson" do
    newLesson = Lesson.create(:name => "New Lesson", :content => "The new lesson content.")
    visit lesson_path(newLesson)
    click_on "Edit This Lesson"
    fill_in "Content", :with => "The new lesson content is edited."
    click_on "Update Lesson"
    expect(page).to have_content "updated"
  end
end
