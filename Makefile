CC			=	g++
CFLAGS		=	-W	-Wall	-Wextra
#CPPFLAGS = -I include
#CPPFLAGS	=	-I/usr/local/Cellar/sfml/2.6.1/include -I include
CPPFLAGS	=	-I include
#LDFLAGS		=   -L/usr/local/Cellar/sfml/2.6.1/lib -lsfml-graphics -lsfml-window -lsfml-system
LDFLAGS		=   -lsfml-graphics -lsfml-window -lsfml-system

#SRC			=	$(wildcard src/*.c)
SRC			=	$(shell find . -type f -name "*.cpp")
OBJ			=	$(SRC:.cpp=.o)

TARGET		=	main.out

all			:	$(TARGET)

$(TARGET)	:	$(OBJ)
			$(CC) -o $@ $^ $(LDFLAGS)

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(TARGET)

re			:	fclean all