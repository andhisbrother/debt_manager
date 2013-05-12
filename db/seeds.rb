# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Debt.create(:name => "Kreditka 1",
			:amount => 500,
			:repaid => 0,
			)

User.create([{:email => "ferko@gmail.com",
			:password => "998877"
	}, {:email => "janko@gmail.com",
		:password => "112233"}])