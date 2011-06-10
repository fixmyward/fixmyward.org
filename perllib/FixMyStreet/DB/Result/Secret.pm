package FixMyStreet::DB::Result::Secret;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("FilterColumn", "InflateColumn::DateTime");
__PACKAGE__->table("secret");
__PACKAGE__->add_columns("secret", { data_type => "text", is_nullable => 0 });


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-06-03 12:02:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Htl6+DHfHy9l+bjBxAbH6Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
