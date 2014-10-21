package GappX::FormTraits::Meta::Widget::Custom::Trait::ZipCodeEntry;
{
  $GappX::FormTraits::Meta::Widget::Custom::Trait::ZipCodeEntry::VERSION = '0.202';
}

use Moose::Role;

around BUILDARGS => sub {
    my ( $orig, $class, %opts ) = @_;
    $opts{properties}{width_chars} ||= '5';
    return $class->$orig( %opts );
};

# returns the value of the widget
around 'get_field_value' => sub {
    my ( $orig, $self, @args ) = @_;
    $self->gobject->get_text eq '' ? undef : $self->gtk_widget->get_text;
};

around 'set_field_value' => sub {
    my ( $orig, $self, $value ) = @_;
    $self->gobject->set_value( defined $value ? $value : '' );
};


package Gapp::Meta::Widget::Custom::Trait::ZipCodeEntry;
{
  $Gapp::Meta::Widget::Custom::Trait::ZipCodeEntry::VERSION = '0.202';
}
sub register_implementation { 'GappX::FormTraits::Meta::Widget::Custom::Trait::ZipCodeEntry' };


1;