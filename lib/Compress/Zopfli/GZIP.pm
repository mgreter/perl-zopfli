# Copyright (c) 2017 Marcel Greter.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

package Compress::Zopfli::GZIP;

our $VERSION = "0.0.1";

use strict;
use warnings;
use Carp;

require Exporter;

our @ISA = qw(Exporter);

our @EXPORT = qw(
	compress
);

use Compress::Zopfli qw(
	ZOPFLI_FORMAT_GZIP
);

sub compress ($;%)
{
	Compress::Zopfli::compress(
		$_[0],
		ZOPFLI_FORMAT_GZIP,
		$_[1] || {}
	)
}

1;
__END__

=head1 NAME - Perl bindings for Google Zopfli Compressor

Compress::Zopfli::GZIP - Compress with google zopfli
