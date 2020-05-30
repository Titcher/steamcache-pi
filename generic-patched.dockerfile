FROM lancachenet/generic-middle:latest
RUN if test "$(getconf LONG_BIT)" = "32"; then \
	echo "32-bit mode, patching config." && sed -i 's/proxy_max_temp_file_size 40960m;/proxy_max_temp_file_size 1920m;/' /etc/nginx/sites-available/generic.conf.d/root/20_cache.conf; \ 
    else \
	echo "$(getconf LONG_BIT)-bit mode."; \
    fi
