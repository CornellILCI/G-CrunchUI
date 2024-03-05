build_gcrunch_nginx.sh builds a gcrunch docker image.
start_gcrunch_*.sh attempts to stop a previously running container, then spin up a new container/image.
If you change a file in website you'll need to run start_gcrunch_* again.

start_gcrunch_af.sh adds a readonly mount point for an analytics framework results filesystem that can be used with status.html. start_gcrunch_plain does not, so there will be no served files.

The nginx conf also has a cheeky commented out section for using the nginx instance to serve a non-secure local repeater of an HTTPS connection as an HTTP standard connector, which was needed in development to bypass CORS issues. If you need it, good luck.