"Mock for testing terser interop"

load("@build_bazel_rules_nodejs//:providers.bzl", "JSModuleInfo")

def _produces_jsinfo(ctx):
    return [
        JSModuleInfo(
            sources = depset(ctx.files.srcs),
            module_format = "umd",
        ),
    ]

produces_jsinfo = rule(_produces_jsinfo, attrs = {
    "srcs": attr.label_list(allow_files = True),
})
