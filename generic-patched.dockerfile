FROM lancachenet/generic-middle:latest
RUN sed -i 's/proxy_max_temp_file_size 40960m;/proxy_max_temp_file_size 1920m;/' /etc/nginx/sites-available/generic.conf.d/root/20_cache.conf 
