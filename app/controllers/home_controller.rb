class HomeController < ApplicationController
	@students=1;
    def index
    	 @students=Student.order(created_at: :desc).all
    	 @studentsJson=Student.order(created_at: :desc).all.to_json
    	 @countriesJson=Country.all.to_json
		 @statesJson=State.all.to_json
		 @citiesJson=City.all.to_json


	end
	
   
  	def show
	    puts "ayush"
        @student=Student.find(params[:id])       
    end

    def exportCSV
    	@csv_data=Student.all
    	respond_to do |format|
    	format.json { render json: @csv_data }
      	format.csv  { send_data @csv_data.to_comma }
      	end

    end

    def exportCSV2
    	@csv2_data = Student.all
		csv_string = CSV.generate do |csv|
			csv << ["id","name","dob","email","Country","State","City","course"]
				@csv2_data.each do |me|
					csv << [me.id, me.name, me.dob,me.email,me.country.name,me.state.name,me.city.name,me.city.name,me.course]
				end
		end
		filename=Date.new

		send_data csv_string, filename: "#{Date.today}_test.csv"
	end
	def download_PDF
		@studentsPDF=Student.all
		 html = render_to_string(:action => '/download_PDF.html.erb', :layout => false)
    	 pdf = PDFKit.new(html)
    	 send_data(pdf.to_pdf)
	end

	def download_image
		url = params[:image_params]
		send_file url, type: "image/jpeg", :disposition => 'attachment', :filename=>"photo.jpg", stream: 'true', buffer_size: '4096'

	end


    
  end
