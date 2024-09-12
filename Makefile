dirs:
	mkdir -p bin

doom: dirs
	clang ./src/main_doom.c $(shell pkg-config --libs --cflags sdl2) -o bin/doom

wolf: dirs
	clang ./src/main_wolf.c $(shell pkg-config --libs --cflags sdl2) -o bin/wolf

all: dirs doom wolf

clean:
	rm -rf bin
