#This is the makefile of EpollTest

ifeq ($(DEBUG_SYMBOLS), TRUE) 
	CFLAGS += -g -Wall -Werror -O0 
else 
	CFLAGS += -Wall -Werror -O2 
endif 
.PHONY:all
all:server client
server:
	gcc  ${CFLAGS}  server_main.c -o server
client:
	gcc  ${CFLAGS} client_main.c -o client
clean:
	rm -f server client
