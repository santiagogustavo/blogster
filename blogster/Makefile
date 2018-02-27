all: clear update seed run

routes:
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