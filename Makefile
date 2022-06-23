all:
	mkdir /home/tblaase/data && mkdir /home/tblaase/data/wordpress && mkdir /home/tblaase/data/mariadb
	sudo docker compose -f ./srcs/docker-compose.yml up -d

clean:
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all -v
	sudo docker system prune -a

fclean: clean
	sudo rm -rf /home/tblaase/data/wordpress/*
	sudo rm -rf /home/tblaase/data/mariadb/*

re: fclean all

ls:
	sudo docker image ls
	sudo docker ps
