return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  keys = {
    {
      "<leader>du",
      function()
        require("dapui").toggle({})
      end,
      desc = "Dap UI",
    },
    {
      "<leader>de",
      function()
        require("dapui").eval()
      end,
      desc = "Eval",
      mode = { "n", "v" },
    },
    {
      "<F8>",
      function()
        require("dap").continue()
      end,
      mode = { "n", "v" },
      desc = "Continue",
    },
    {
      "<F5>",
      function()
        require("dap").step_into()
      end,
      mode = { "n", "v" },
      desc = "Step Into",
    },
    {
      "<F6>",
      function()
        require("dap").step_over()
      end,
      mode = { "n", "v" },
      desc = "Step Over",
    },
    {
      "<F7>",
      function()
        require("dap").step_out()
      end,
      mode = { "n", "v" },
      desc = "Step Out",
    },
  },
  opts = {},
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
  end,
}
