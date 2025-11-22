.PHONY: all clean

SRC = prg_meetup.tex
TARGET = $(SRC:.tex=.pdf)

BUILD_DIR = build

all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	latexmk -pdf -outdir=$(BUILD_DIR) $<
	cp $(BUILD_DIR)/$@ ./$@

clean:
	rm -rf $(BUILD_DIR) $(TARGET)
