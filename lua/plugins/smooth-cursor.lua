return {
    {
        "gen740/SmoothCursor.nvim",
        config = function()
            require("smoothcursor").setup({
                autostart = true,
                cursor = "", -- Change this to anything you like (e.g., "█")
                texthl = "SmoothCursor", -- Highlight group
                linehl = "CursorLine", -- Highlight line under cursor
                type = "default", -- Options: "exp", "linear", "default"
                fancy = {
                    enable = true,
                    head = { cursor = ">", texthl = "SmoothCursor" },
                    body = { { cursor = "-", texthl = "SmoothCursor" } },
                    tail = { cursor = "<", texthl = "SmoothCursor" }
                },
                speed = 60, -- Increase speed to make jumps more visible
                intervals = 10, -- Reduce interval time
                threshold = 3, -- Make it trigger on smaller jumps
            })
        end,
    },

    {
         "sphamba/smear-cursor.nvim",
         opts = {
             -- Smear cursor when switching buffers or windows.
             smear_between_buffers = true,

             -- Smear cursor when moving within line or to neighbor lines.
             -- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
             smear_between_neighbor_lines = true,

             -- Draw the smear in buffer space instead of screen space when scrolling
             scroll_buffer_space = true,

             -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
             -- Smears will blend better on all backgrounds.
             legacy_computing_symbols_support = false,

             -- Smear cursor in insert mode.
             -- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
             smear_insert_mode = true,
         },
    }
}

