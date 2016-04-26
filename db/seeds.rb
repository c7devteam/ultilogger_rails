filebird = Application.where(name: Faker::Company.profession).create

2.times do
	request_log = filebird.request_logs.create(
		user_id: Faker::Number.number(1),
		action: Faker::Hacker.verb,
		controller: Faker::Hacker.adjective,
		params: Faker::Hacker.say_something_smart
	)
end
