git clone --recursive https://github.com/telegramdesktop/libtgvoip.git
cd libtgvoip
git checkout d4a0f719ffd8d29e88474f67abc9fc862661c3b9
docker run -u root --entrypoint=/bin/sh --rm -i -v ${PWD}:/usr/src tgvoip_env:debian