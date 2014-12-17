default: compile
	./a.out
	echo $$?

compile:
	cc --pedantic -Wall -Werror -std=c99 -framework OpenGL -framework Foundation -lglfw3 main.m
