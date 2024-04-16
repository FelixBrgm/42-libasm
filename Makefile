NAME := libasm.a

S_DIR = source
S_FILES := ft_strdup.s ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s
S_FILES := $(addprefix $(S_DIR)/, $(S_FILES))

OBJ_DIR := build
OBJ_FILES := $(S_FILES:.s=.o)
OBJ_FILES := $(S_FILES:%.s=$(OBJ_DIR)/%.o)


all: $(NAME)

$(NAME): $(OBJ_FILES)
	ar rcs $(NAME) $(OBJ_FILES)

$(OBJ_DIR)/%.o: %.s
	@mkdir -p $(@D)
	nasm -f elf64 -o $@ $<

clean:
	@rm -rf $(OBJ_DIR)
	@rm -f $(OBJ_FILES)
	@echo "Cleaned"

fclean: clean
	@rm -f $(NAME)
	@echo "Fcleaned"

re: fclean $(NAME)

test: re
	@gcc -Wall -Wextra -Werror  source/main.c $(NAME) -o test
	@./test
	@rm -f test

.PHONY: all clean fclean re