all: clear update run

routes:
	rake routes

clear:
	rake db:drop
	rake db:create

update:
	rake db:migrate
	rake db:seed

run:
	rails s