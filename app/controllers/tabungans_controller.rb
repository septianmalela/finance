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
		byebug
	end

	def show
		@tabungan = Tabungan.last
	end

	private

	def tabungan_params
		params.permit(:tujuan_nabung, :target_dana, :biaya_perbulan, :tempo, :range_bunga, :saldo_awal, :awal_nabung, :bunga_id)
	end

end
