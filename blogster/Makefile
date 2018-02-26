all: clear update route seed run

route:
	rails routes

clear:
	rails db:drop
	rails db:create

update:
	rails db:migrate

seed:
	rails db:seed

run:
	rails s