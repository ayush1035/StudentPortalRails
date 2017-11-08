class StudentsController < ApplicationController

  def index
    @xls_data = Student.all
    respond_to do |format|
      format.html
      format.xlsx { response.headers['Content-Disposition'] = 'attachment; filename="my_new_filename.xlsx"'}
    end
  end
  def create
    begin
      Student.create(student_params)
      redirect_to root_path
    rescue ActiveRecord::RecordNotUnique
      flash[:alert] = 'Email not Unique!'
      redirect_to action: "register"

    end
  end
  def register
    @student=Student.new
    @create=true
    @countries = Country.all


  end
  def update
    @student=Student.find(params[:id])
    @student.update(student_params)

    redirect_to root_path

  end
  def edit
    @countries = Country.all
    @student=Student.find(params[:id])
    @edit=true
    @video="https://www.youtube.com/embed/"+@student.youtubeID+"?autoplay=1"
  end

  def destroy
    Student.delete(params[:id])
    redirect_to root_path
  end
  def get_state

    @states = State.where(country_id:params[:country_id])

    respond_to do |format|

      format.json{
        render json: {:states => @states}
      }
    end

  end
  def get_city

    @cities = City.where(state_id:params[:state_id])

    respond_to do |format|

      format.json{
        render json: {:cities => @cities}
      }
    end

  end


  private
  def student_params
    params.require(:student).permit(:name,:dob,:email,:phone,:country_id,:state_id,:city_id,:course,:youtubeID,:avatar)
  end

end
