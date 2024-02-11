#
# Yutnori
#
# Copyright 2024 by lees
#

NAME := yutnori

SRCS := main.cpp 
OBJS := $(SRCS:%.cpp=obj/%.o)

CXX		:=	c++
CFLAGS	:=	-Wall -Wextra -Werror -std=c++11
COMPILE	:=	$(CXX) $(CFLAGS)

all: $(NAME)

$(NAME): $(OBJS)
	$(COMPILE) $^ -o $@

obj/%.o: src/*/%.cpp
	@mkdir -p obj
	$(COMPILE) -c $< -o $@

clean:
	rm -rf obj

fclean:
	@$(MAKE) clean
	rm -f $(NAME)

re:
	@$(MAKE) fclean
	@$(MAKE) all

.PHONY: all clean re fclean
