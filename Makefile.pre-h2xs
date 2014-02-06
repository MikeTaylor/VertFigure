TARGETS = bifurcation.svg pbj.svg

all: $(TARGETS)

%.svg: %.vcd vcd2svg
	rm -f $@
	m4 $< | ./vcd2svg - > $@
	chmod 444 $@

clean:
	rm -f $(TARGETS)

