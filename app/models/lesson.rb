class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true

  def next
    if (Lesson.find_by(number: self.number + 1) != nil)
      Lesson.find_by(number: self.number + 1)
    else
      self
    end
  end

  def previous
    if (Lesson.find_by(number: self.number - 1) != nil)
      Lesson.find_by(number: self.number - 1)
    else
      self
    end
  end
end
