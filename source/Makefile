S_FILES := ft_strlen.s ft_strcpy.s ft_strcmp.s
O_FILES := $(S_FILES:.s=.o)

NAME := libasm.a

EXECUTABLE_TESTER := tester

all: $(NAME)

$(NAME):
	nasm -f elf64 ft_strlen.s
	nasm -f elf64 ft_strcpy.s
	nasm -f elf64 ft_strcmp.s
	ar rcs $(NAME) $(O_FILES)

clean:
	-rm $(O_FILES)

tclean:
	-rm $(EXECUTABLE_TESTER)

fclean: clean tclean
	-rm $(NAME)

re: fclean $(NAME)

test: re
	gcc main.c -L. $(NAME) -o $(EXECUTABLE_TESTER) # -g
	./$(EXECUTABLE_TESTER)