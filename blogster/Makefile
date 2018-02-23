all: clear update seed run

routes:
	rake routes

clear:
	rake db:drop
	rake db:create

update:
	rake db:migrate

seed:
	rake db:seed

run:
	rails s