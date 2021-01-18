class Tabungan < ApplicationRecord
	belongs_to :bunga

	def format
		number_to_currency(example_price, unit: "Rp. ", separator: ",", delimiter: ".")
	end

end
