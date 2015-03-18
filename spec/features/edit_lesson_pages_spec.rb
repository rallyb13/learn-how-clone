require 'rails_helper'

describe "the edit lesson process" do
  it "edits a lesson" do
    new_lesson = Lesson.create(:name => "New Lesson", :content => "The new lesson content.", :number => 2)
    visit lesson_path(new_lesson)
    click_on "Edit This Lesson"
    fill_in "Content", :with => "The new lesson content is edited."
    click_on "Update Lesson"
    expect(page).to have_content "updated"
  end
end
