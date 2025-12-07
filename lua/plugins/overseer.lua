return {
  "stevearc/overseer.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  keys = {
    { "<leader>or", "<cmd>OverseerRun<cr>", desc = "Overseer: Run Task" },
    { "<leader>ot", "<cmd>OverseerToggle<cr>", desc = "Overseer: Toggle Panel" },
    -- Add your own keybindings for specific tasks here.
    -- To find the task name, run :OverseerRun and look at the list of tasks.
    -- Then, you can create a keybinding like the example below.
    {
      "<leader>s",
      function()
        require("overseer").run_task({ name = "cmake-clean" })
      end,
      desc = "Overseer: Run Build Task",
    },
    {
      "<leader>d",
      function()
        require("overseer").run_task({ name = "cmake-configure" })
      end,
      desc = "Overseer: Run Tests",
    },
    {
      "<leader>f",
      function()
        require("overseer").run_task({ name = "cmake-build" })
      end,
      desc = "Overseer: Run Tests",
    },
    {
      "<leader>g",
      function()
        require("overseer").run_task({ name = "run" })
      end,
      desc = "Overseer: Run Tests",
    },
  },
  opts = {
    -- This enables the template that reads .vscode/tasks.json
    templates = { "vscode" },
    parsers = {
      vscode = "jsonc",
    },
    strategy = {
      "toggleterm",
      direction = "float",
      id = "overseer",
      close_on_exit = false,
      on_exit = function(task, term_id)
        local term = require("toggleterm.terminal").get(term_id)
        if not term then
          return
        end
        if task.exit_code == 0 then
          term:set_status_line("SUCCESS: Press <CR> to close")
        else
          term:set_status_line("ERROR: Press <CR> to close")
        end
        -- Add a mapping to close the terminal on <CR>
        vim.api.nvim_buf_set_keymap(
          term.bufnr,
          "n",
          "<CR>",
          "<cmd>close<CR>",
          { noremap = true, silent = true, buffer = term.bufnr }
        )
      end,
    },
  },
}
