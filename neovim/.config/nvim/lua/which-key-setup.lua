-- document existing key chains
require('which-key').add({
  {
    { "<leader>c", group = "[C]ode" },
    { "<leader>c_", hidden = true },
    { "<leader>d", group = "[D]ocument" },
    { "<leader>d_", hidden = true },
    { "<leader>g", group = "[G]it" },
    { "<leader>g_", hidden = true },
    { "<leader>h", group = "Git [H]unk" },
    { "<leader>h_", hidden = true },
    { "<leader>r", group = "[R]ename" },
    { "<leader>r_", hidden = true },
    { "<leader>s", group = "[S]earch" },
    { "<leader>s_", hidden = true },
    { "<leader>t", group = "[T]oggle" },
    { "<leader>t_", hidden = true },
    { "<leader>w", group = "[W]orkspace" },
    { "<leader>w_", hidden = true },
  },
  {
    { mode = 'n', 'v' }, -- register which-key VISUAL mode
    { "<leader>", group = "VISUAL <leader>", mode = "v" }, -- required for visual <leader>hs (hunk stage) to work
    { "<leader>h", desc = "Git [H]unk", mode = "v" },
  }
})
