# Docker library for Lettersmith

[Lettersmith](https://github.com/gordonbrander/lettersmith) is a static site
generator written in Lua. This Docker project uses [a fork of this
generator](https://github.com/michal-h21/lettersmith) that fixes some issues.

## Use 

The default configuration expects the following project structure:

   
    www/
       web.lua
       html/
       www/

The `web.lua` script contains the site generation code, the `html` directory HTML or Markdown source files and the `www` directory the generated files. The basic invocation is:

    docker run -v /path/to/www:/www:z  --rm IMAGE_NAME
    
# Environmental variables

- `SCRIPT_FILE` - name of the Lua script
- `HTML_DIR` - source HTML directory
- `WWW_DIR` - output HTML directory
