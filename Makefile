################################################################################
# ========================== Capture Environment ===============================
# get the repo root and output path
REPO_ROOT:=${CURDIR}
OUT_DIR=$(REPO_ROOT)/bin
################################################################################
# ============================== OPTIONS =======================================
# the output binary name, overridden when cross compiling
RUNM_BINARY_NAME?=runm
################################################################################
# ================================= Building ===================================
# standard "make" target -> builds
all: build
# builds runm, outputs to $(OUT_DIR)
build:
	go generate ./...
	go build -v -o "$(OUT_DIR)/$(RUNM_BINARY_NAME)" .
################################################################################