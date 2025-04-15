return {
  "mfussenegger/nvim-jdtls",
  opts = {
    jdtls = function(opts)
      local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
      local jvmArg = "-javaagent:" .. install_path .. "/lombok.jar"
      table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)
      table.insert(opts.cmd, "--java-executable=/usr/lib/jvm/java-21-openjdk-amd64/bin/java")

      opts.settings = {
        java = {
          eclipse = {
            downloadSources = true,
          },
          autobuild = { enabled = true },
          configuration = {
            runtimes = {
              {
                name = "JavaSE-Corretto-11",
                path = "/opt/jvm/amazon-corretto-11.0.26.4.1-linux-x64",
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
              url = vim.fn.expand("~/.config/nvim/lua/resources/intellij-java-google-style.xml"),
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
