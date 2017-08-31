class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end
end
