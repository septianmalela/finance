class TabungansController < ApplicationController

	def index
	end

	def new
		@tabungan = Tabungan.new
	end

	def create
		@tabungan = Tabungan.new(tabungan_params)
		@tabungan.bunga_id = @tabungan.range_bunga
		@tabungan.save
		redirect_to tabungan_path(@tabungan)
		flash[:notice] = "Rincian tabungan berhasil dibuat, semoga apa yang di harapkan untuk membeli #{@tabungan.tujuan_nabung} TERCAPAI!!!"
	end

	def show
		@tabungan = Tabungan.last
		respond_to do |format|
            format.html
            format.csv { send_data @tabungan.to_csv, filename: "Tabungan-#{@tabungan}.csv" }
            format.pdf do
                render pdf: "PDF No. #{@tabungan.id}",
                :wkhtmltopdf => '/usr/bin/wkhtmltopdf',
                page_size: 'A3',
                template: "tabungans/show.html.erb",
                layout: "pdf.html",
                orientation: "Landscape",
                lowquality: true,
                zoom: 0,
                dpi: 75,
                :disposition => "inline"
            end
        end
	end

	private

	def tabungan_params
		params.permit(:tujuan_nabung, :target_dana, :biaya_perbulan, :tempo, :range_bunga, :saldo_awal, :awal_nabung, :bunga_id)
	end

end
