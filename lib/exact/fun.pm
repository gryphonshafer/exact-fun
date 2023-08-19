package exact::fun;
# ABSTRACT: Functions and methods with parameter lists for exact

use 5.014;
use exact;
use Function::Parameters     ();
use Class::Method::Modifiers ();

# VERSION

sub import {
    my ( $self, $caller, $input ) = @_;

    Function::Parameters->import( ( $input and $input =~ /^mod/i ) ? ( qw( :std :modifiers ) ) : ':std' );

    if ( $input and $input =~ /^cmm/i ) {
        $caller //= caller();
        eval qq{
            package $caller {
                use Class::Method::Modifiers;
            };
        };
    }
}

1;
__END__
=pod

=begin :badges

=for markdown
[![test](https://github.com/gryphonshafer/exact-fun/workflows/test/badge.svg)](https://github.com/gryphonshafer/exact-fun/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/exact-fun/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/exact-fun)

=end :badges

=head1 SYNOPSIS

    use exact -fun;

    fun foo ( $x, $y, $z = 5 ) {
        return $x + $y + $z;
    }

    say foo( 1, 2 );

    method bar ( $label, $n ) {
        return "$label: " . ( $n * $self->scale );
    }

=head1 DESCRIPTION

L<exact::fun> is an extension for L<exact> that imports L<Function::Parameters>
into the calling namespace.

    use exact -fun;

It can optionally include the modifiers that come with L<Function::Parameters>.

    use exact 'fun(mod)';

If instead of the modifiers that come with L<Function::Parameters> you need to
import from L<Class::Method::Modifiers> instead, do this:

    use exact 'fun(cmm)';

See the L<exact> documentation for additional information about
extensions. The intended use of L<exact::fun> is via the extension interface
of L<exact>.

    use exact -fun, -conf, -noutf8;

However, you can also use it directly, which will also use L<exact> with
default options:

    use exact::fun;

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<GitHub|https://github.com/gryphonshafer/exact-fun>
* L<MetaCPAN|https://metacpan.org/pod/exact::fun>
* L<GitHub Actions|https://github.com/gryphonshafer/exact-fun/actions>
* L<Codecov|https://codecov.io/gh/gryphonshafer/exact-fun>
* L<CPANTS|http://cpants.cpanauthors.org/dist/exact-fun>
* L<CPAN Testers|http://www.cpantesters.org/distro/D/exact-fun.html>

=cut
