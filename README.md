# NAME

exact::fun - Functions and methods with parameter lists for exact

# VERSION

version 1.02

[![test](https://github.com/gryphonshafer/exact-fun/workflows/test/badge.svg)](https://github.com/gryphonshafer/exact-fun/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/exact-fun/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/exact-fun)

# SYNOPSIS

    use exact -fun;

    fun foo ( $x, $y, $z = 5 ) {
        return $x + $y + $z;
    }

    say foo( 1, 2 );

    method bar ( $label, $n ) {
        return "$label: " . ( $n * $self->scale );
    }

# DESCRIPTION

[exact::fun](https://metacpan.org/pod/exact%3A%3Afun) is an extension for [exact](https://metacpan.org/pod/exact) that imports [Function::Parameters](https://metacpan.org/pod/Function%3A%3AParameters)
into the calling namespace.

    use exact -fun;

It can optionally include the modifiers that come with [Function::Parameters](https://metacpan.org/pod/Function%3A%3AParameters).

    use exact 'fun(mod)';

If instead of the modifiers that come with [Function::Parameters](https://metacpan.org/pod/Function%3A%3AParameters) you need to
import from [Class::Method::Modifiers](https://metacpan.org/pod/Class%3A%3AMethod%3A%3AModifiers) instead, do this:

    use exact 'fun(cmm)';

See the [exact](https://metacpan.org/pod/exact) documentation for additional information about
extensions. The intended use of [exact::fun](https://metacpan.org/pod/exact%3A%3Afun) is via the extension interface
of [exact](https://metacpan.org/pod/exact).

    use exact -fun, -conf, -noutf8;

However, you can also use it directly, which will also use [exact](https://metacpan.org/pod/exact) with
default options:

    use exact::fun;

# SEE ALSO

You can look for additional information at:

- [GitHub](https://github.com/gryphonshafer/exact-fun)
- [MetaCPAN](https://metacpan.org/pod/exact::fun)
- [GitHub Actions](https://github.com/gryphonshafer/exact-fun/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/exact-fun)
- [CPANTS](http://cpants.cpanauthors.org/dist/exact-fun)
- [CPAN Testers](http://www.cpantesters.org/distro/D/exact-fun.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2023-2050 by Gryphon Shafer.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
