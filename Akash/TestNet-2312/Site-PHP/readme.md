После завершения установки подключиться через SSH с помощью PuTTY/WinSCP и т.д.</br>
В файле `/etc/nginx/sites-available/default` раскоментировать 7 строк.</br>
Например, можно использовать `nano /etc/nginx/sites-available/default`</br>
Чтобы получилось вот так:
```
location ~ \.php$ {
		include snippets/fastcgi-php.conf;
	#
	#	# With php-fpm (or other unix sockets):
		fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
	#	# With php-cgi (or other tcp sockets):
	#	fastcgi_pass 127.0.0.1:9000;
	}

	# deny access to .htaccess files, if Apache's document root
	# concurs with nginx's one
	#
	location ~ /\.ht {
		deny all;
	}
```
Перезапускаем сервер:
```
service nginx restart
```
Нужно подождать с минуту, пока он запустится.




### Для справки
по поводу ошибки 502:</br>
https://stackoverflow.com/questions/73026502/missing-var-run-php-fpm-php7-4-fpm-sock-or-var-run-php-fpm

