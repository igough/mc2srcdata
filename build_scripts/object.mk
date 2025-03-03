OBJECT_TARGETS = object2.pak

OBJECT_INPUT = ..$(PATH_SEPARATOR)objects
OBJECT_OUTPUT = $(DST_DATA_ROOT)$(PATH_SEPARATOR)objects

OBJECT_CLEAN_TARGETS = $(addprefix $(OBJECT_OUTPUT)$(PATH_SEPARATOR), $(OBJECT_TARGETS))

.PHONY: object_clean

object_clean:
	$(RM) $(OBJECT_CLEAN_TARGETS)
	$(RMDIR) $(OBJECT_OUTPUT)

$(OBJECT_OUTPUT):
	$(MKDIR) $(OBJECT_OUTPUT)

$(OBJECT_TARGETS) : | $(OBJECT_OUTPUT)

%.pak : $(OBJECT_INPUT)/%.rsp
	./pak -f $(OBJECT_OUTPUT)/$@ -r $<

ALL_TARGETS += $(OBJECT_TARGETS)
ALL_CLEAN_TARGETS += object_clean
