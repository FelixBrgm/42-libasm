S_FILES := ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s
O_FILES := $(S_FILES:.s=.o)

NAME := libasm.a

EXECUTABLE_TESTER := tester

all: $(NAME)

$(NAME): $(O_FILES)
	ar rcs $(NAME) $(O_FILES)

%.o: %.s
	nasm -f elf64 -o $@ -i./ $<

clean:
	rm $(O_FILES)

tclean:
	rm $(EXECUTABLE_TESTER)

fclean: clean
	rm $(NAME)

re: fclean $(NAME)

test: $(NAME)
	gcc main.c -L. -lasm -o $(EXECUTABLE_TESTER) # -g
	./$(EXECUTABLE_TESTER)