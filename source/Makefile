S_FILES := ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s
O_FILES := $(S_FILES:.s=.o)

NAME := libasm.a

EXECUTABLE_TESTER := tester

all: $(NAME)

$(NAME): $(O_FILES)
	ar rcs $(NAME) $(O_FILES)

%.o: %.s
	nasm -f elf64 -o $@ $<

clean:
	rm $(O_FILES)

tclean:
	rm $(EXECUTABLE_TESTER)

fclean: clean
	rm $(NAME)

re: fclean $(NAME)

test: $(NAME)
	gcc main.c -L. libasm.a -o $(EXECUTABLE_TESTER) # -g
	./$(EXECUTABLE_TESTER)