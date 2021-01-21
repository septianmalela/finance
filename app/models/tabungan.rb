require 'csv'
class Tabungan < ApplicationRecord
	belongs_to :bunga
	include ActionView::Helpers::NumberHelper

	validates :tujuan_nabung, presence: true
	validates :target_dana, presence: true
	validates :biaya_perbulan, presence: true
	validates :tempo, presence: true
	validates :range_bunga, presence: true
	validates :awal_nabung, presence: true

	def format
		number_to_currency(biaya_perbulan, unit: "Rp. ", separator: ",", delimiter: ".")
	end

	def format2
		number_to_currency(target_dana, unit: "Rp. ", separator: ",", delimiter: ".")
	end

	def dates
		 @start_date = awal_nabung 
		 @end_date = tempo.months.after.to_date 
		 @number_of_months = (@end_date.year*12+@end_date.month)-(@start_date.year*12+@start_date.month) 
	     dates = @number_of_months.times.each_with_object([]) do |count, array| array << [@start_date + count.months] end 
	end

	def to_csv
    # attributes = %w{id tujuan_nabung target_dana biaya_perbulan awal_nabung }
    CSV.generate do |csv|

      	a = Tabungan.last.bunga
      # csv << [user.name, user.age, user.notes, coupons]
      csv << %w{id tujuan_nabung target_dana biaya_perbulan awal_nabung bunga range_bunga }
      csv << [ self.id, self.tujuan_nabung, self.target_dana, self.biaya_perbulan, self.awal_nabung, a.bunga, a.range_bunga]
    end
  end
  # end to_csv

end
