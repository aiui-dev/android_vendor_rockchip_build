CC=gcc
CFLAGS := -g -O3 -Wall

mkkrnlimg: mkkrnlimg.c
	$(CC) $(LOCAL_CFLAGS) $(CFLAGS) mkkrnlimg.c $(LOCAL_LDFLAGS) $(LDFLAGS) -o $@

clean:
	rm -f mkkrnlimg
	rm -rf mkkrnlimg.dSYM
