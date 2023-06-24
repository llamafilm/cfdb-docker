# cfdb-docker
Docker environment for Colorfront OSD

I made this for quick testing on my laptop, where I don't want any background services running all the time.  

The Dockerfile builds an image with PHP, Apache, phpMyAdmin, and some configuration for Colorfront environment

Briefly tested with TKD 2022.  Older versions may require extra modules.

Obtain the v9 and cf-web-ui packages from Colorfront (requires login):
- https://dl.colorfront.cloud/official/Others/V9_2022_update2.zip
- https://dl.colorfront.cloud/official/Others/cf-web-ui_onprem_v1.8.1.zip
