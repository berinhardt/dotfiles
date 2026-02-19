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
    { "<leader>mc", ":CMakeStopExecutor<cr>:CMakeClean<cr>", desc = "CMake Clean" },
    { "<leader>mg", ":CMakeStopExecutor<cr>:CMakeGenerate<cr>", desc = "Generate" },
    { "<leader>mb", ":CMakeStopExecutor<cr>:CMakeBuild<cr>", desc = "CMake Build" },
    { "<leader>mr", ":CMakeStopExecutor<cr>:CMakeRun<cr>", desc = "CMake Run" },
    { "<leader>mt", ":CMakeStopExecutor<cr>:CMakeRunTest<cr>", desc = "CMake Run Tests" },
    { "<leader>ms", ":CMakeStopExecutor<cr>:CMakeSelectBuildType<cr>", desc = "CMake Select Build Type" },
    { "<leader>mS", ":CMakeStopExecutor<cr>:CMakeSelectBuildTarget<cr>", desc = "CMake Select Build Target" },
    { "<leader>ml", ":CMakeStopExecutor<cr>:CMakeSelectLaunchTarget<cr>", desc = " CMake Select Launch Target" },
    { "<leader>mk", ":CMakeStopExecutor<cr>:CMakeSelectKit<cr>", desc = "CMake Select Build Kit" },
  },
}
