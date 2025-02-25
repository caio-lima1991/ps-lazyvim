return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = function(opts)
      local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
      local jvmArg = "-javaagent:" .. install_path .. "/lombok.jar"
      table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)

      opts.settings = {

        java = {
          home = "/usr/lib/jvm/java-17-openjdk-amd64/bin/java",
          eclipse = {
            downloadSources = true,
          },
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = "/usr/lib/jvm/java-11-openjdk-amd64",
              },
              {
                name = "JavaSE-17",
                path = "/usr/lib/jvm/java-17-openjdk-amd64",
              },
              {
                name = "JavaSE-21",
                path = "/usr/lib/jvm/java-21-openjdk-amd64",
              },
            },
          },
          format = {
            enabled = true,
            settings = {
              url = vim.fn.expand("~/eclipse-java-google-style.xml"),
              profile = "GoogleStyle",
            },
          },
          inlayHints = {
            parameterNames = {
              enabled = "all",
            },
          },
          maven = {
            downloadSources = true,
          },
          references = {
            includeDecompiledSources = true,
          },
          referencesCodeLens = {
            enabled = true,
          },
        },
      }

      return opts
    end,
  },
}
