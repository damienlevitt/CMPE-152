################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/wci/intermediate/icodeimpl/ICodeNodeImpl.cpp 

OBJS += \
./src/wci/intermediate/icodeimpl/ICodeNodeImpl.o 

CPP_DEPS += \
./src/wci/intermediate/icodeimpl/ICodeNodeImpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/wci/intermediate/icodeimpl/%.o: ../src/wci/intermediate/icodeimpl/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I/home/damien/eclipse-workspace/boost_1_72_0 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


