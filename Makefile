CC := gcc
CFLAGS := -Wall -Wextra
LDFLAGS := -pthread -lrt
OUTPUT_DIR := output

# List of services
SERVICES := service_1 service_2 service_3

all:$(OUTPUT_DIR) $(SERVICES)

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

# Compile each service
$(SERVICES):
	$(CC) $(CFLAGS) -o $(OUTPUT_DIR)/$@ $@.c $(LDFLAGS)

clean:
	rm -rf $(OUTPUT_DIR)
