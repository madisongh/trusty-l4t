#
# Copyright (c) 2020, NVIDIA CORPORATION. All rights reserved
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files
# (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

TOOLCHAIN_PREFIX := $(CROSS_COMPILER)
CC := $(TOOLCHAIN_PREFIX)gcc
AR := $(TOOLCHAIN_PREFIX)ar

LD_FLAGS = \
	-L./libtrusty \
	-L./libtegracrypto

C_FLAGS = \
	-I./include \
	-I./libtrusty/include \
	-I./libtegracrypto/include

C_FLAGS += -DDEBUG
C_FLAGS += -DENABLE_TEGRA_SE=0

LD_LIBS = \
	-ltrusty \
	-ltegracrypto

all: libtrusty libtegracrypto hwkey-app
hwkey-app: hwkey-app.c
	$(CC) -static -o $@ $^ $(C_FLAGS) $(LD_FLAGS) $(LD_LIBS)

clean: clean-libtrusty clean-libtegracrypto
	$(RM) hwkey-app

include ./libtrusty/local.mk
include ./libtegracrypto/local.mk
