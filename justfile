default:
    @just --list

publish_ghcr:
    docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/simonneutert/shell-curry-debian-12-example:main --push . 
