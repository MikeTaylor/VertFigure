# VertFigure - generate schematic illustrations of vertebral columns

Copyright 2013-2014 Mike Taylor <mike@miketaylor.org.uk>

Licensed under the Gnu General Public Licence v3.0

--

This project contains VertFigure, a program for generating schematic illustrations of vertebral columns, visually similar to that of [Wedel (2009:supplementary figure 1)](https://svpow.files.wordpress.com/2009/02/wedel-2009-supplementary-fig-1.jpg). It was first written to make [Wedel and Taylor (2013a: figure 9)](https://svpow.files.wordpress.com/2013/03/wedel-and-taylor-2013-bifurcation-figure-9-bifurcatogram.jpg) and then re-used to make [Wedel and Taylor (2013b: figure 2)](https://svpow.files.wordpress.com/2013/11/wedel-taylor-2013b-figure-2-phylogenetic-distribution-of-caudal-pneumaticity.jpg).

Input is in the VCD (Vertebral Column Description) format, which is defined for the first time in this project, and [documented in POD](https://metacpan.org/pod/VSG::VCD::Format). Two such inputs (the ones we used for the 2013 papers) are `bifurcation.vcd` and `pbj.vcd`, and can be found in [the `examples` area](examples).

These files are translated into SVG by [the `bin/VertFigure` script](bin/VertFigure). This is written in Perl, using the SVG library.


## References

Wedel, Mathew J. 2009. Evidence for bird-like air sacs in saurischian dinosaurs. _Journal of Experimental Zoology_ *311A*:611-628.
http://sauroposeidon.files.wordpress.com/2010/04/wedel-2009-air-sacs.pdf

Wedel, Mathew J., and Michael P. Taylor. 2013a. Neural spine bifurcation in sauropod dinosaurs of the Morrison Formation: ontogenetic and phylogenetic implications. _PalArch's Journal of Vertebrate Palaeontology_ *10(1)*:1-34.
http://www.palarch.nl/wp-content/Wedel-and-Taylor-2013-Neural-spine-bifurcation-in-sauropod-dinosaurs-PJVP-10-11.pdf

Wedel, Mathew J., and Michael P. Taylor 2013b. Caudal pneumaticity and pneumatic hiatuses in the sauropod dinosaurs Giraffatitan and Apatosaurus. _PLOS ONE_ *8(10)*:e78213. 14 pages. doi: 10.1371/journal.pone.0078213
http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0078213

