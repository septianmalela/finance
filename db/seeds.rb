# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rake db:migrate:reset

a = Tabungan.new
a.tujuan_nabung = "Motor KLX"
a.target_dana = "30000000"
a.biaya_perbulan = "1000000"
a.tempo = "35"
a.range_bunga = "1"
a.saldo_awal = "100000"
a.bunga_id = 2
a.save

b = Bunga.new
b.bunga = "tabungan"
b.range_bunga = 1
b.save

b = Bunga.new
b.bunga = "deposito"
b.range_bunga = 4
b.save

b = Bunga.new
b.bunga = "reksadana"
b.range_bunga = 6
b.save

b = Bunga.new
b.bunga = "emas"
b.range_bunga = 10
b.save

b = Bunga.new
b.bunga = "saham"
b.range_bunga = 12
b.save

@tabungan = Tabungan.last
@start_date = @tabungan.awal_nabung
@end_date = @tabungan.tempo.months.after.to_date

@number_of_months = (@end_date.year*12+@end_date.month)-(@start_date.year*12+@start_date.month)+1
dates = @number_of_months.times.each_with_object([]) do |count, array| array << [@start_date.beginning_of_month + count.months] end
# dates = number_of_months.times.each_with_object([]) do |count, array| array << [start_date.beginning_of_month + count.months,start_date.end_of_month + count.months] end
