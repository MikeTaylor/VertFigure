package VCD::Format;

=head1 NAME

VCD::Format - format of .vcd (vertebral column description) files

=head1 SYNOPSIS

 *width: 800
 *height: 565
 Taxon: Apatosaurus louisae
 Specimen: CM 3018
 Citation: Gilmore 1936:195 and plates 24-25
 Data: -----YVVVVVVVVV|VVVuuunnn-

=head1 DESCRIPTION

Vertebral Column Description (VCD) format is line-oriented. Each line
has a self-contained meaning.

Comments are introduced by a hash character (C<#>) and run to the end
of the line. They are ignored.

Leading and trailing whitespace are ignored.

Blank lines (including those consisting only of spaces and/or
comments) ignored.

All other lines fall into one of two categories:

=over 4

=item Configuration settings

These lines begin with an asterisk (C<*>). Each such line is of the
form C<*>I<property>C<:> I<value>. It sets the named property to the
specified value. Valid properties and their meanings are described
below.

=item Taxon data

All other lines are data. Each such line is of the form
I<property>C<:> I<value> with no leading asterisk. It provides data
about a specific taxon in the vertebral column diagram. Data is
described in detail below.

=back

Lines that do not match of either of these forms are invalid.

=head1 DATA

=over 4

=item C<Taxon>

Specifies the name of a taxon which will appear in the diagram.  The
data for each taxon begins with a C<Taxon> line. Following this, any
or all of the other three data lines may follow in any order.

=item C<Specimen>

Indicates the specimen number of the individual that is
described. Useful when multiple individuals of the same taxon are
included.

=item C<Citation>

Specifies the source of the observations in the C<Data> line:
typically either a citation of a published descriptive paper, or
"personal observation". At present, this is not used: the intention is
that a future version of vcd2svg will included it in an auto-generated
caption.

=item C<Data>

Specifies the information about the individual vertebrae of the column
in question. The state of each vertebra is specified by a single
character, which can be anything at all. The way those states are
illustrated depends on how they are described by the
C<state->I<char>C<-color>
and
C<state->I<char>C<-polygon>
configuration settings described below. These can be configured in
such as way as to represent cervicals vs. dorsals, pneumatic
vs. apneumatic vertebrae, bifid vs. simple neural spines, or whatever
other characteristic is of interest.

One character in the data is special: the vertical bar (C<|>)
indicates the anchor point: a position within the vertebral column
that is particular interest, such as the cervicodorsal transition, or
the dorsosacral transition. The anchor points of all the vertebral
columns will be horizontally aligned in the output.

=back

=head1 CONFIGURATION SETTINGS

Each of these properties has a single global setting, which applies
across all taxa in the diagram. If a setting is set for a second time,
the new value replaces the old.

The following settings are recognised:

=over 4

=item C<background> I<color>

If specified, then the emitted SVG file has a solid background in the
specified colour; otherwise, it is transparent.

The value can be any string that is interpreted as identifying a color
in SVG -- for example, a name such as B<red> or an RGB triple such as
C<rgb(0,193,252)>.

=item C<box-color> I<color> [default: C<grey>]

The color of the boxes that outline each vertebra. Can be removed
altogether by setting it to the same as the background colour.

=item C<cervical-height> I<length>

###

=item C<cervical-width> I<>

###

=item C<cervico-dorsal-color> I<>

###

=item C<cervico-dorsal-offset> I<>

###

=item C<dorsal-height-gradient> I<>

###

=item C<dorsal-height> I<>

###

=item C<dorsal-width> I<>

###

=item C<font-family> I<>

###

=item C<font-size> I<>

###

=item C<height> I<>

###

=item C<state-X-color> I<>

###

=item C<state-X-polygon> I<>

###

=item C<taxon-height> I<>

###

=item C<text-y-offset> I<>

###

=item C<width> I<>

###

=back

=head1 EXAMPLES

See
C<examples/bifurcation/bifurcation.vcd>
and
C<examples/pbj/pbj.vcd>
in the distributon. (Note that the latter must be preprocessed by the
m4 macro processor.)

=head1 SEE ALSO

vcd2svg - program for translating VCD files into SVG.

=head1 AUTHOR

Copyright (C) 2013-2014 by Mike Taylor E<lt>mike@miketaylor.org.ukE<gt>

=head1 LICENSE

GNU General Public Licence v3.0

=cut


1;
