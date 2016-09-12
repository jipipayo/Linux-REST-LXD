package Linux::LXD;
use 5.008001;
use strict;
use utf8;
use warnings;
use Moose;
use Net::HTTP::Spore;
use JSON qw(decode_json encode_json);
our $VERSION = "0.01";

my $api_version = "1.0"; #set by default


has '_client' => (
    is      => 'rw',
    lazy    => 1,
    default => sub {
        my $self    = shift;
        my $client  = Net::HTTP::Spore->new_from_spec('lxd.json');
        $client->enable('Format::JSON');
    }
)








1;
__END__

=encoding utf-8

=head1 NAME

Linux::LXD - It's a LXD API REST Client in perl


=head1 SYNOPSIS

    use Linux::LXD;

=head1 DESCRIPTION

Linux::LXD is a API REST client for LXD based on this doc: https://github.com/lxc/lxd/blob/master/doc/rest-api.md

=head1 LICENSE

Copyright (C) jipipayo.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

jipipayo E<lt>jipipayo@cpan.orgE<gt>

=cut

