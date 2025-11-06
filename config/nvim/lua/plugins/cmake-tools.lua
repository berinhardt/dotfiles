return {
  "Civitasv/cmake-tools.nvim",
  opts = {
    cmake_build_directory = "build",
    cmake_kits_path = "~/.config/nvim/cmake-tools-kits.json",
    cmake_build_options = { "-j16" },
    cmake_executor = {
      opts = {
        auto_close_when_success = false,
      },
    },
    cmake_use_scratch_buffer = false,
  },
  keys = {
    { "<leader>mC", ":CMakeStopExecutor<cr>:CMakeGenerate!<cr>", desc = "CMake Clean & Generate" },
    { "<leader>mb", ":CMakeStopExecutor<cr>:CMakeBuild<cr>", desc = "CMake Build" },
    { "<leader>mB", ":CMakeStopExecutor<cr>:CMakeBuild!<cr>", desc = "CMake Clean & Build" },
    { "<leader>mr", ":CMakeStopExecutor<cr>:CMakeRun<cr>", desc = "CMake Run" },
    { "<leader>mR", ":CMakeStopExecutor<cr>:CMakeRun!<cr>", desc = "CMake Clean & Run" },
    { "<leader>mt", ":CMakeStopExecutor<cr>:CMakeSelectBuildType<cr>", desc = "CMake Select Build Type" },
    { "<leader>mk", ":CMakeStopExecutor<cr>:CMakeSelectKit<cr>", desc = "CMake Select Build Kit" },
  },
}
