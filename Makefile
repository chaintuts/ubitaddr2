# This file contains a make script for the Entropal application
#
# Author: Josh McIntyre
#

# This block defines makefile variables
SRC_FILES=src/*.py
LIB_FILES=lib/*
TEST_FILES=tests/*.py

BUILD_DIR=bin/ubitaddr2
BUILD_DIR_TOP=bin

# This rule builds the application
build: $(SRC_FILES) $(LIB_FILES) $(TEST_FILES)

	# Create the build dir and copy Python files + libraries
	mkdir -p $(BUILD_DIR)
	cp -r $(LIB_FILES) $(BUILD_DIR)
	cp $(SRC_FILES) $(TEST_FILES) $(BUILD_DIR)
	mv $(BUILD_DIR)/ubitaddr2.py $(BUILD_DIR)/code.py

# This rule cleans the build directory
clean: $(BUILD_DIR)
	rm -r $(BUILD_DIR)/*
	rm -r -f $(BUILD_DIR)/.pytest_cache
	rmdir $(BUILD_DIR)
	rmdir $(BUILD_DIR_TOP)