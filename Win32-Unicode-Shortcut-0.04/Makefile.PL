use ExtUtils::MakeMaker;

unless (($^O eq "MSWin32") || ($^O eq "cygwin")) {
    die "OS unsupported\n";
}

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Win32::Unicode::Shortcut',
    VERSION_FROM      => 'lib/Win32/Unicode/Shortcut.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Win32/Unicode/Shortcut.pm', # retrieve abstract from module
       AUTHOR         => 'Jean-Damien Durand <jeandamiendurand@free.fr>') : ()),
    LIBS              => [''], # e.g., '-lm'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    INC               => '-I.', # e.g., '-I. -I/usr/include/other'
	# Un-comment this if you add C files to link with later:
    # OBJECT            => '$(O_FILES)', # link all the C files too
);
