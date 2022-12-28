find ./ -name '*.md' -exec docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) pandoc/core -r markdown -t rst {} -o {} \;
