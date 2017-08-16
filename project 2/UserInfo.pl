#Using DBI Perl module 
use DBI;

#Using Perl DBI to connect to test.db Database
my $dbConnection = DBI->connect("dbi:SQLite:test.db");

#Stores content of UserInfo table to reference of hash
my $users = $dbConnection->selectall_hashref(q(select * from UserInfo), 'first_name');

#Run loop to print content on terminal 
foreach my $user (keys %$users)
		{
			print "$users->{$user}{first_name} | $users->{$user}{last_name} | $users->{$user}{home}";

			print "\n";
		}