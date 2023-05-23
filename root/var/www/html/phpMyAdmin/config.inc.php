<?php
$i = 0;
$i++;
$cfg['Servers'][$i]['host'] = 'db';
$cfg['Servers'][$i]['auth_type'] = 'cookie';

// if you insist on "root" having no password:
$cfg['Servers'][$i]['AllowNoPassword'] = true;

// use here a value of your choice at least 32 chars long
$cfg['blowfish_secret'] = 'htp6tDww3GY68643q7ucvnRDj7BBFvdZ';
?>
