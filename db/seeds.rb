# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Baby.where(name: 'baby_1').first_or_create
Baby.where(name: 'baby_2').first_or_create
Baby.where(name: 'baby_3').first_or_create
Baby.where(name: 'baby_4').first_or_create
Baby.where(name: 'baby_5').first_or_create
Baby.where(name: 'baby_6').first_or_create
Baby.where(name: 'baby_7').first_or_create
Baby.where(name: 'baby_8').first_or_create

Breastfeed.where(baby_id: 1, volume: 100, feed_time: 5).first_or_create
Breastfeed.where(baby_id: 2, volume: 100, feed_time: 6).first_or_create
Breastfeed.where(baby_id: 3, volume: 100, feed_time: 8).first_or_create
Breastfeed.where(baby_id: 4, volume: 100, feed_time: 3).first_or_create
Breastfeed.where(baby_id: 5, volume: 100, feed_time: 9).first_or_create
Breastfeed.where(baby_id: 6, volume: 100, feed_time: 4).first_or_create
Breastfeed.where(baby_id: 7, volume: 100, feed_time: 8).first_or_create
Breastfeed.where(baby_id: 8, volume: 100, feed_time: 12).first_or_create
