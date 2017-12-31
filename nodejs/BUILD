load("@io_bazel_rules_docker//docker:docker.bzl", "docker_build", "docker_push")

docker_build(
    name = "node_image",
    base = "@nodejs_distroless//image",
    # https://github.com/GoogleCloudPlatform/distroless/blob/master/nodejs/README.md
    # distroless nodejs image sets entrypoint to "node", so need to provide a path to .js file
    cmd = ["server.js"],
    env = {
        "PORT": "8080",
    },
    # requires a symlink "app" pointing to folder containing application code with installed modules
    files = [
        "app",
    ],
    labels = {"maintainer": "Jacek Szlachta"},
    ports = ["8080"],
    workdir = "/app",
)

docker_push(
    name = "push_node_image",
    image = ":node_image",
    registry = "192.168.0.9:5000",
    repository = "$(app_name)",
    tag = "latest",
)
