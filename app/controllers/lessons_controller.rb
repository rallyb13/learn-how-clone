class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    if (@lesson.next == @lesson)
      flash[:alert] = "END OF LINE."
    # elsif (@lesson.previous == @lesson)
    #   flash[:alert] = "BEGINNING OF LINE."
    else
      @lesson
    end
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      flash[:notice] = @lesson.name + " has been successfully saved. You deserve a cookie."
      redirect_to lessons_path
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      flash[:notice] = @lesson.name + " has been successfully updated. I'm so proud of you."
      redirect_to lesson_path(@lesson)
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = @lesson.name + " has been successfully deleted. You deserve a cookie."
    redirect_to lessons_path
  end
end
