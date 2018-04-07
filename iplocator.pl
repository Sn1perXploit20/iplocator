#!/usr/bin/perl
# using for tract location with ip / host :)
# this is recode script

use Socket;
use Term::ANSIColor;
use WWW::Mechanize;
use JSON;
    
#warna
	
print color 'bold bright_green';
 
print q{

                         ,_   .  ._. _.  .
                     , _-\','|~\~      ~/      ;-'_   _-'     ,;_;_,    ~~-
            /~~-\_/-'~'--' \~~| ',    ,'      /  / ~|-_\_/~/~      ~~--~~~~'--_				
            /              ,/'-/~ '\ ,' _  , '|,'|~                   ._/-, /~
            ~/-'~\_,       '-,| '|. '   ~  ,\ /'~                /    /_  /~
          .-~      '|        '',\~|\       _\~     ,_  ,               /|
                    '\        /'~          |_/~\\,-,~  \ "         ,_,/ |
                     |       /            ._-~'\_ _~|              \ ) /              INTERNET PROTOCOL LOCATOR
                      \   __-\           '/      ~ |\  \_          /  ~		        
            .,         '\ |,  ~-_      - |          \\_' ~|  /\  \~ ,		---==[Version : 1.0
                         ~-_'  _;       '\           '-,   \,' /\/  |	    +--**--==[Code Name : Sn1perXploit20
                           '\_,~'\_       \_ _,       /'    '  |, /|'		---==[Contact : fb.com/otakuhacking
                             /     \_       ~ |      /         \  ~'; -,_.	  
                             |       ~\        |    |  ,        '-_, ,; ~ ~\
                              \,      /        \    / /|            ,-, ,   -,
                               |    ,/          |  |' |/          ,-   ~ \   '.
                              ,|   ,/           \ ,/              \       |
                              /    |             ~                 -~~-, /   _
                              |  ,-'                                    ~    /
                              / ,'                                      ~
                              ',|  ~
                                ~'


					  
					  

};
 
print color 'reset';
@iphost=$ARGV[0] || die "		\033[96mhow to use : perl iplocator.pl [host] [ip] [domain] \n\n		example 		 : perl iplocator.pl  www.google.com \n     				   perl iplocator.pl  8.8.8.8\n \n";
my @ip = inet_ntoa(scalar gethostbyname("@iphost")or die "ip host not found\n");
my @hn = scalar gethostbyaddr(inet_aton(@ip),AF_INET);
 
my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/@ip"); # JSON API OF IP-API.COM
    my $json = $GET->content();
 
 
my $info = decode_json($json);


print "	\033[94m+------------------------------------------------------------------------------------------------\033[0m\n"; 	
print "	| 		     \033[1m\033[91mIP ADDRESS\033[0m\033[0m : \033[92m\033[1m", $info->{'query'}, "\033[0m\033[0m \n";
print "	\033[94m+-------------------------------+----------------------------------------------------------------\033[0m\n"; 
print "	| [\033[92m+\033[0m] | ORG: 			|	", $info->{'as'}, "\n";
print "	| [\033[92m+\033[0m] | ISP: 			|	", $info->{'isp'}, "\n";
print "	| [\033[92m+\033[0m] | Country: 		|	", $info->{'country'}," - ", $info->{'countryCode'}, "\n";
print "	| [\033[92m+\033[0m] | City: 			|	", $info->{'city'}, "\n";
print "	| [\033[92m+\033[0m] | Region: 		|	", $info->{'regionName'}, " - " , $info->{'region'}, "\n";
print "	| [\033[92m+\033[0m] | Geo: ", "Lat: 		|	" , $info->{'lat'}, " - Long: ", $info->{'lon'}, "\n";
print "	| [\033[92m+\033[0m] | Geo: ", "Latitude: 		|	" , $info->{'lat'}, " - Long: ", $info->{'lat'}, "\n";
print "	| [\033[92m+\033[0m] | Time: ", "timezone: 	|	" , $info->{'timezone'}, " - Long: ", $info->{'timezone'}, "\n";
print "	| [\033[92m+\033[0m] | As number/name: ", "as	|	" , $info->{'as'}, " - Long: ", $info->{'as'}, "\n";
print "	| [\033[92m+\033[0m] | ORG: 			|	", $info->{'as'}, "\n";
print "	| [\033[92m+\033[0m] | Country code: 		|	", $info->{'countryCode'}, "\n"; 
print "	| [\033[92m+\033[0m] | Status: 		|	", $info->{'status'}," 						  \n"; 					
print "	\033[94m+-------------------------------+----------------------------------------------------------------\033[0m \n";
print "\n";
# EOF