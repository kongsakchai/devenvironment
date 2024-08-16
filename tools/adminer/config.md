# Config

## Startup

Copy config folder to backup folder

## server.php

create `server.php` in backup/config

```php
<?php
return [
    '{label}' => array(
		// Required parameters
        'server'    => '{server}',
        'driver'    => '{driver}',
        'username'  => '{username}',
        'pass'      => '{password}',
    ),
];
?>
```
