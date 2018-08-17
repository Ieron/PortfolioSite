# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
	Blog.create!(
		title: "Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
	)

end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created"

6.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Somthing to give detail",
		body: "Etiam et nisl iaculis odio bibendum ultricies non ac massa. Nam vitae iaculis massa. Phasellus volutpat ex sit amet mauris eleifend, at sodales lacus tempus. Aliquam aliquam quam sit amet enim commodo vestibulum. Suspendisse eget ultricies magna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam viverra, mauris dapibus porta interdum, ante metus porta eros, nec aliquam ipsum urna quis risus. Vivamus ornare fermentum mattis. Nullam a ullamcorper odio.",
		main_image: "https://place-hold.it/600x400",
		thumbnail_image: "https://place-hold.it/350x200"
	)
end

puts "6 portfolio items created"