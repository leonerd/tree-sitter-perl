$s; @a; %h;
# <- variable.scalar
#   ^ variable.array
#       ^ variable.hash
$one + $two;
# <- variable.scalar
#      ^ variable.scalar
my $var;
# <- keyword
#  ^ variable.scalar
my ($x, undef, $z);
# <- keyword
#   ^ variable.scalar
#       ^ keyword
#              ^ variable.scalar
our $PackageVar;
# <- keyword
#   ^ variable.scalar
$sref->$*;
# <- variable.scalar
#    ^^^^ variable.scalar
$aref->@*;
# <- variable.scalar
#    ^^^^ variable.array
$href->%*;
# <- variable.scalar
#    ^^^^ variable.hash
$arr[ 123 ];
# <- variable.array
# ^^ variable.array
#   ^ variable.array
#     ^^^ number
#         ^ variable.array
$aref->[ 123 ];
# <- variable.scalar
#    ^^^ variable.array
#        ^^^ number
#            ^ variable.array
$hash{ key };
# <- variable.hash
# ^^^ variable.hash
#    ^ variable.hash
#      ^^^ string.special
#          ^ variable.hash
$href->{ key };
# <- variable.scalar
#    ^^^ variable.hash
#        ^^^ string.special
#            ^ variable.hash
$aref->[ 123 ]{ 456 }[ 789 ];
# <- variable.scalar
#    ^^^ variable.array
#        ^^^ number
#            ^ variable.array
#             ^ variable.hash
#               ^^^ number
#                   ^ variable.hash
#                    ^ variable.array
#                      ^^^ number
#                          ^ variable.array
