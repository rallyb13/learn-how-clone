require 'rails_helper'

describe "the flip between lesson pages process" do
  it "goes to the next lesson" do
    current_lesson = Lesson.create({:name => "Lesson 1", :content => "Lesson 1 content", :number => 1})
    next_lesson = Lesson.create({:name => "Lesson 2", :content => "Lesson 2 content", :number => 2})
    visit lesson_path(current_lesson)
    click_on "Next Lesson"
    expect(page).to have_content "Lesson 2"
  end

  it "throws an alert if there is no next lesson to go to" do
    current_lesson = Lesson.create({:name => "Lesson 1", :content => "Lesson 1 content", :number => 1})
    visit lesson_path(current_lesson)
    click_on "Next Lesson"
    expect(page).to have_content "END OF LINE"
  end
end
