use 5.014002;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'VCD',
    VERSION_FROM      => 'lib/VCD.pm', # finds $VERSION
    PREREQ_PM         => {
	SVG => 2.5,
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT       => 'Generate schematic illustrations of vertebral columns',
       AUTHOR         => 'Mike Taylor <mike@miketaylor.org.uk>') : ()),
);
