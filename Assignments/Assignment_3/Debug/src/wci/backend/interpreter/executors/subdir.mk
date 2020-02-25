################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/wci/backend/interpreter/executors/AssignmentExecutor.cpp \
../src/wci/backend/interpreter/executors/CompoundExecutor.cpp \
../src/wci/backend/interpreter/executors/ExpressionExecutor.cpp \
../src/wci/backend/interpreter/executors/StatementExecutor.cpp 

OBJS += \
./src/wci/backend/interpreter/executors/AssignmentExecutor.o \
./src/wci/backend/interpreter/executors/CompoundExecutor.o \
./src/wci/backend/interpreter/executors/ExpressionExecutor.o \
./src/wci/backend/interpreter/executors/StatementExecutor.o 

CPP_DEPS += \
./src/wci/backend/interpreter/executors/AssignmentExecutor.d \
./src/wci/backend/interpreter/executors/CompoundExecutor.d \
./src/wci/backend/interpreter/executors/ExpressionExecutor.d \
./src/wci/backend/interpreter/executors/StatementExecutor.d 


# Each subdirectory must supply rules for building sources it contributes
src/wci/backend/interpreter/executors/%.o: ../src/wci/backend/interpreter/executors/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -I/home/damien/eclipse-workspace/boost_1_72_0 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


