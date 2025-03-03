FONTS_TARGETS = $(addprefix $(FONTS_OUTPUT)$(PATH_SEPARATOR), arial8.bmp arial9game.bmp arial9chat.bmp arialnarrow8.bmp arialnarrow9.bmp arialblack9.bmp agencyfb8.bmp agencyfb11.bmp agencyfb14.bmp agencyfb17.bmp agencyfb20.bmp arialnarrow6.bmp)

FONTS_GLYPH_FILES = $(patsubst %.bmp,%.glyph,$(FONTS_TARGETS))


FONTS_OUTPUT = $(DST_ASSETS_ROOT)$(PATH_SEPARATOR)graphics


print_fonts_target:
	echo $(FONTS_TARGETS)
	echo $(FONTS_GLYPH_FILES)


$(FONTS_OUTPUT)$(PATH_SEPARATOR)arial8.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 13 $(FONTS_OUTPUT)/arial8

$(FONTS_OUTPUT)$(PATH_SEPARATOR)arial9game.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 14 $(FONTS_OUTPUT)/arial9game

$(FONTS_OUTPUT)$(PATH_SEPARATOR)arial9chat.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 14 $(FONTS_OUTPUT)/arial9chat

$(FONTS_OUTPUT)$(PATH_SEPARATOR)arialnarrow8.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 13 $(FONTS_OUTPUT)/arialnarrow8

$(FONTS_OUTPUT)$(PATH_SEPARATOR)arialnarrow9.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 14 $(FONTS_OUTPUT)/arialnarrow9

$(FONTS_OUTPUT)$(PATH_SEPARATOR)arialblack9.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 14 $(FONTS_OUTPUT)/arialblack9



$(FONTS_OUTPUT)$(PATH_SEPARATOR)agencyfb8.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 13 $(FONTS_OUTPUT)/agencyfb8

$(FONTS_OUTPUT)$(PATH_SEPARATOR)agencyfb11.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 16 $(FONTS_OUTPUT)/agencyfb11



$(FONTS_OUTPUT)$(PATH_SEPARATOR)agencyfb14.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 19 $(FONTS_OUTPUT)/agencyfb14

$(FONTS_OUTPUT)$(PATH_SEPARATOR)agencyfb17.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 22 $(FONTS_OUTPUT)/agencyfb17

$(FONTS_OUTPUT)$(PATH_SEPARATOR)agencyfb20.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 25 $(FONTS_OUTPUT)/agencyfb20


$(FONTS_OUTPUT)$(PATH_SEPARATOR)arialnarrow6.bmp: $(SRC_DATA_ROOT)/fonts/Mecha.ttf
	./text_tool $(SRC_DATA_ROOT)/fonts/Mecha.ttf 11 $(FONTS_OUTPUT)/arialnarrow6


$(FONTS_OUTPUT): $(DST_ASSETS_ROOT)
	$(MKDIR) $(FONTS_OUTPUT)

$(FONTS_TARGETS) : | $(FONTS_OUTPUT)

FONTS_CLEAN_TARGETS = fonts_clean

.PHONY: $(FONTS_CLEAN_TARGETS)

fonts_clean:
	$(RM) $(FONTS_TARGETS)
	$(RM) $(FONTS_GLYPH_FILES)
	$(RMDIR) $(FONTS_OUTPUT)
	$(RMDIR) $(DST_ASSETS_ROOT)

ALL_TARGETS += $(FONTS_TARGETS)
ALL_CLEAN_TARGETS += $(FONTS_CLEAN_TARGETS)


