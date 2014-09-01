package Dataset::UK::Stats19::Schema::Result::LocalAuthorityHighway;
use strict;
use warnings;

use base 'Dataset::UK::Stats19::Schema::LabelResult';

__PACKAGE__->load_components("Helper::Row::SubClass", "Core");
__PACKAGE__->table('local_authority_highway');

__PACKAGE__->subclass;

1;
