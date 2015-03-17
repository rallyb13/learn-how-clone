require 'rails_helper'

describe "the lesson deletion process" do
  it "deletes a lesson" do
    newLesson = Lesson.create(:name => "New Lesson", :content => "The new lesson content.")
    visit lesson_path(newLesson)
    click_on "Delete This Lesson"
    expect(page).to have_content "deleted"
  end
end
