all: httpd client
LIBS = -lpthread
httpd: httpd.c
	gcc  -W -Wall  -o $@ $< $(LIBS)

client: simpleclient.c
	gcc -W -Wall  -o $@ $<
clean:
	rm httpd
