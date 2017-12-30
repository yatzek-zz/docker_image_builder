
git_repository(
    name = "io_bazel_rules_docker",
#    remote = "https://github.com/bazelbuild/rules_docker.git",
    remote = "https://github.com/yatzek/rules_docker.git",
    tag = "v0.3.1",
)

load(
  "@io_bazel_rules_docker//container:container.bzl",
  "container_pull",
  "container_image",
  container_repositories = "repositories",
)

container_repositories()

container_pull(
    name = "node_6.10.2",
    registry ="192.168.0.9:5000",
    repository = "node",
    tag = "6.10.2",
)
