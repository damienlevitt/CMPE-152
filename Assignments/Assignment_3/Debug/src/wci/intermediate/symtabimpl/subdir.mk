################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/wci/intermediate/symtabimpl/SymTabImpl.cpp \
../src/wci/intermediate/symtabimpl/SymTabStackImpl.cpp 

OBJS += \
./src/wci/intermediate/symtabimpl/SymTabImpl.o \
./src/wci/intermediate/symtabimpl/SymTabStackImpl.o 

CPP_DEPS += \
./src/wci/intermediate/symtabimpl/SymTabImpl.d \
./src/wci/intermediate/symtabimpl/SymTabStackImpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/wci/intermediate/symtabimpl/%.o: ../src/wci/intermediate/symtabimpl/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I/home/damien/eclipse-workspace/boost_1_72_0 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


