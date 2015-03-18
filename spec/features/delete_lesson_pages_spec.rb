require 'rails_helper'

describe "the lesson deletion process" do
  it "deletes a lesson" do
    new_lesson = Lesson.create(:name => "New Lesson", :content => "The new lesson content.", :number => 2)
    visit lesson_path(new_lesson)
    click_on "Delete This Lesson"
    expect(page).to have_content "deleted"
  end
end
