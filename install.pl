#!/usr/bin/perl

print "Rageicons installation for iChat\n";



#Backing up old file

my $backupFileName = "Smileys.plist.". get_timestamp();
system("cp /Applications/iChat.app/Contents/PlugIns/Standard.smileypack/Contents/Resources/English.lproj/Smileys.plist $backupFileName");

system("cp *.tif /Applications/iChat.app/Contents/PlugIns/Standard.smileypack/Contents/Resources");
system("cp Smileys.plist /Applications/iChat.app/Contents/PlugIns/Standard.smileypack/Contents/Resources/English.lproj/");



sub get_timestamp {
   ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
   if ($mon < 10) { $mon = "0$mon"; }
   if ($hour < 10) { $hour = "0$hour"; }
   if ($min < 10) { $min = "0$min"; }
   if ($sec < 10) { $sec = "0$sec"; }
   $year=$year+1900;

   return $year . '_' . $mon . '_' . $mday . '__' . $hour . '_' . $min . '_' . $sec;
}

