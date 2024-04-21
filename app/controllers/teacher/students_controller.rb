class Teacher::StudentsController < Teacher::BaseController
  before_action :set_student, only: %i[edit update show destroy]
  
  def index
    @students = current_teacher_teacher.school.students
  end


  def edit; end

  def update
    if @student.update(student_params)
      redirect_to teacher_student_path(@student), success: t('defaults.message.updated', item: Studnet.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Studnet.model_name.human)
      render 'edit', status: :unprocessable_entity
    end
  end

  def show
    @average_achievement_rate = @studnet.average_achievement_rate
  end

  def destroy
    @studnet.destroy!
    redirect_to teacher_studnets_path, success: t('defaults.message.deleted', item: Studnet.model_name.human)
  end
  
  private

  def set_studnet
    @student = Studnet.find(params[:id])
  end
  
  def studnet_params
    params.require(:student).permit(:email, :password, :password_confirmation, :name, :grade_id, :student_class_id, :school_id )
  end
end