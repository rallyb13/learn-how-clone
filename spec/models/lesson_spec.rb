require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }

  context "#next" do
    it "returns the lesson with the next-highest number than the current lesson" do
      current_lesson = Lesson.create({:name => "Lesson 1", :content => "Lesson 1 content", :number => 1})
      next_lesson = Lesson.create({:name => "Lesson 2", :content => "Lesson 2 content", :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context "#previous" do
    it "returns the lesson with the next-lowest number than the current lesson" do
      current_lesson = Lesson.create({:name => "Lesson 5", :content => "Lesson 5 content", :number => 5})
      previous_lesson = Lesson.create({:name => "Lesson 4", :content => "Lesson 4 content", :number => 4})
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
