# Paths & names
FRONTEND_DIR := frontend
BACKEND_DIR  := tt
STATIC_DIR   := static

JS_IN     := bin/main.bc.js
JS_BUILT  := $(FRONTEND_DIR)/_build/default/$(JS_IN)

UNIKERNEL_SRC := $(BACKEND_DIR)/dist/hello
UNIKERNEL_DST := ./hello

.PHONY: all frontend backend copy-unikernel clean

# Build everything: frontend, backend, then copy the unikernel to repo root
all: frontend backend copy-unikernel

# ---------- FRONTEND ----------
frontend: $(STATIC_DIR)/main.bc.js $(STATIC_DIR)/index.html
	@echo "frontend built & copied to $(STATIC_DIR)"

$(JS_BUILT):
	@cd $(FRONTEND_DIR) && dune build $(JS_IN)
	@echo "built bonsai"

$(STATIC_DIR)/main.bc.js: $(JS_BUILT)
	@mkdir -p $(STATIC_DIR)
	@cp $(JS_BUILT) $@
	@echo "copied js to $(STATIC_DIR)"

$(STATIC_DIR)/index.html: $(FRONTEND_DIR)/index.html
	@mkdir -p $(STATIC_DIR)
	@cp $< $@
	@echo "copied index to $(STATIC_DIR)"

# ---------- BACKEND ----------
backend:
	@cd $(BACKEND_DIR) && dune build
	@echo "built backend"

# Copy unikernel from tt/dist/hello.exe to repo root
copy-unikernel: backend
	@cp $(UNIKERNEL_SRC) $(UNIKERNEL_DST)
	@echo "copied unikernel to $(UNIKERNEL_DST)"
