NAME	= hello_assembly


PRE		= preprocessing
COMP	= compilation
ASM		= assembly


SOURCE	= main.c


all: ${NAME}

# this step converts Assembly Language Mnemonics into Machine Code
# resolves symbolic names (e.g. "printf") but doesn't link them
# the Object File contains Relocatable Machine Code
# not yet executable
${ASM}:
	cc -c ${SOURCE} -o ${NAME}.o

# this step translates Preprocessed C Code into Assembly Language
# performs CPU Optimizations
# the ".asm" file contains Architecture-specific ASM Code
# (e.g. x86, ARM...)
${COMP}:
	cc -S ${SOURCE} -o ${NAME}.asm

# this step handles preprocessor directives
# expands macros, removes comments, and includes headers
# outputs Preprocessed C Code in a single expanded source file
${PRE}:
	cc -E ${SOURCE} -o ${NAME}.i

${LINK}:
	cc ${SOURCE} 


clean:
	rm -f ${NAME}
	rm -f ${NAME}.i
	rm -f ${NAME}.asm
	rm -f ${NAME}.o

# this command includes:
#   1. preprocessing
#   2. compilation
#   3. assembly
#   4. linking  (.asm -> final executable)
${NAME}:
	cc ${SOURCE} -o ${NAME}


re: clean all


.PHONY: all clean re