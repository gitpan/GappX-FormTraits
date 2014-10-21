package GappX::FormTraits::Meta::Widget::Custom::Trait::StreetEntry;
{
  $GappX::FormTraits::Meta::Widget::Custom::Trait::StreetEntry::VERSION = '0.201';
}

use Moose::Role;

around BUILDARGS => sub {
    my ( $orig, $class, %opts ) = @_;
    $opts{properties}{width_chars} ||= '35';
    return $class->$orig( %opts );
};


package Gapp::Meta::Widget::Custom::Trait::StreetEntry;
{
  $Gapp::Meta::Widget::Custom::Trait::StreetEntry::VERSION = '0.201';
}
sub register_implementation { 'GappX::FormTraits::Meta::Widget::Custom::Trait::StreetEntry' };


1;