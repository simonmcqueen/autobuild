#!/bin/sh

/usr/bin/perl $HOME/autobuild/autobuild.pl \
                        $HOME/autobuild/configs/autobuild/lindy_isis/host.xml

/usr/bin/perl $HOME/autobuild/autobuild.pl \
                        $HOME/autobuild/configs/autobuild/lindy_isis/ts-target.xml

exec /usr/bin/perl $HOME/autobuild/autobuild.pl \
                        $HOME/autobuild/configs/autobuild/lindy_isis/target.xml