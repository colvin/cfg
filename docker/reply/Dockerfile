FROM perl:PERL_VERSION

RUN cpanm --notest\
		Clone\
		DBD::SQLite\
		DBD::mysql\
		Data::Dumper\
		Data::Printer\
		DateTime::Format::ISO8601\
		File::Path\
		File::Slurp\
		File::Temp\
		Hash::Merge\
		IPC::Run\
		JSON::XS\
		JSON\
		Net::IP\
		Net::Netmask\
		Parallel::ForkManager\
		REST::Client\
		Reply\
		Rose::DB::Object\
		SOAP::Lite\
		Term::ReadKey\
		Term::ReadLine::Gnu\
		Term::ReadLine::Perl\
	&& rm -rf ~/.cpanm

RUN [ "reply" ]
