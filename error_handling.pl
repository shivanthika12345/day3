
#https://www.tutorialspoint.com/perl/perl_error_handling.htm
package T;

require Exporter;
@ISA = qw/Exporter/;
@EXPORT = qw/function/;
use Carp;

sub function {
   warn "Error in module!";
}
1;

function();