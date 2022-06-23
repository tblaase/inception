all:
	sudo docker compose -f ./srcs/docker-compose.yml up -d

clean:
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v
	sudo docker system prune -a

fclean: clean
	@if [ ! -d "/home/tblaase/data/wordpress" ]; then \
	sudo rm -rf /home/tblaase/data/wordpress/*; \
	fi;

	@if [ ! -d "/home/tblaase/data/mariadb" ]; then \
	sudo rm -rf /home/tblaase/data/mariadb/*; \
	fi;

re: fclean all

ls:
	sudo docker image ls
	sudo docker ps
