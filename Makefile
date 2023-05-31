CFLAGS = -Wall -Wextra -std=gnu11 -Og -g
LDFLAGS = -L/opt/phytec-yogurt-vendor-xwayland/BSP-Yocto-FSL-i.MX8MP-PD21.1.3/sysroots/aarch64-phytec-linux/usr/lib
LDLIBS = -li2c
BUILD_PATH=build

all: main.c
	$(CC) $(CFLAGS) $(LDFLAGS) $(LDLIBS) main.c -o ${BUILD_PATH}/hello.bin
clean:
	rm -f ${BUILD_PATH}/hello.bin
