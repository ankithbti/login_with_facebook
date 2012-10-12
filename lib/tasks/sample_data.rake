namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do

		Project.create!(name: "Example Project",
		desc: "Description of Project")
		
		10.times do |n|
			name = "Project Name #{n+1}"
			desc = "Description no. #{n+1}"
			Project.create!(name: name, desc: desc)
		end

		User.create!(name: "Example User",
		email: "example@railstutorial.org",
		password: "foobar",
		password_confirmation: "foobar")
		
		10.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(name: name,
			email: email,
			password: password,
			password_confirmation: password)
		end

		User.create!(name: "Ankur Bishnoi",
			email: "bishnoi.hbti@gmail.com",
			password: "foobar",
			password_confirmation: "foobar")

	end
end
