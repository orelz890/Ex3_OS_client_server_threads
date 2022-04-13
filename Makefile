all: server 
	./server

client: clientC
	./client localhost

original: originallL
	./original

originallL: FORK_Server.c
	gcc -o original FORK_Server.c 


clientC: client.c
	gcc -o client client.c

server: server.c
	gcc -pthread -o server server.c


clean:
	rm -f *.o main server ser cli a.out client original