S_FILES := ft_strlen.s
O_FILES := $(S_FILES:.s=.o)

NAME := libasm.a

EXECUTABLE_TESTER := tester

all: $(NAME)

$(NAME):
	nasm -f elf64 $(S_FILES)
	ar rcs $(NAME) $(O_FILES)

clean:
	-rm $(O_FILES)

tclean:
	-rm $(EXECUTABLE_TESTER)

fclean: clean tclean
	-rm $(NAME)

re: fclean $(NAME)

test: all
	gcc main.c -L. $(NAME) -o $(EXECUTABLE_TESTER) # -g
	./$(EXECUTABLE_TESTER)