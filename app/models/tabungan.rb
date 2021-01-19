class Tabungan < ApplicationRecord
	belongs_to :bunga
	include ActionView::Helpers::NumberHelper

	def format
		number_to_currency(biaya_perbulan, unit: "Rp. ", separator: ",", delimiter: ".")
	end

	def format2
		number_to_currency(target_dana, unit: "Rp. ", separator: ",", delimiter: ".")
	end

end
