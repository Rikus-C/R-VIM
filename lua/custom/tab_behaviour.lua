---- Smart Tab Behavior for Normal and Insert Mode
--local function smart_tab_forward()
--    local line = vim.api.nvim_get_current_line()
--    local col = vim.fn.col(".")
--
--    -- Stop at end of line
--    if col >= #line then return end
--
--    local pattern = "[^a-zA-Z0-9]" -- Match special characters
--    local next_special = vim.fn.search(pattern, "Wn") -- Stay within the line
--
--    if next_special > col then
--        vim.cmd("normal! l") -- Move one char forward
--    else
--        vim.cmd("normal! w") -- Move to next word
--    end
--end
--
--local function smart_tab_backward()
--    local col = vim.fn.col(".")
--    local prev_special = vim.fn.search("[^a-zA-Z0-9]", "bW") -- Search backward
--
--    if prev_special < col then
--        vim.cmd("normal! h") -- Move one char back
--    else
--        vim.cmd("normal! b") -- Move to previous word
--    end
--end
--
--local function insert_mode_tab()
--    local col = vim.fn.col(".")
--    local line = vim.api.nvim_get_current_line()
--
--    -- If at the end of the line, insert a Tab character
--    if col >= #line then
--        return vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
--    end
--
--    local pattern = "[^a-zA-Z0-9]"
--    local next_special = vim.fn.search(pattern, "Wn")
--
--    if next_special > col then
--        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Right>", true, false, true), "n", false)
--    else
--        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-o>w", true, false, true), "n", false)
--    end
--end
--
--local function insert_mode_shift_tab()
--    local col = vim.fn.col(".")
--    local prev_special = vim.fn.search("[^a-zA-Z0-9]", "bW")
--
--    if prev_special < col then
--        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Left>", true, false, true), "n", false)
--    else
--        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-o>b", true, false, true), "n", false)
--    end
--end
--
---- Handling Ctrl+Arrow for Normal Mode
--local function ctrl_arrow_forward()
--    local col = vim.fn.col(".")
--    local line = vim.api.nvim_get_current_line()
--    local next_special = vim.fn.search("[^a-zA-Z0-9]", "Wn") -- Look for next special character
--
--    if next_special > col then
--        vim.cmd("normal! l") -- Move one char forward
--    else
--        vim.cmd("normal! w") -- Move to next word
--    end
--end
--
--local function ctrl_arrow_backward()
--    local col = vim.fn.col(".")
--    local prev_special = vim.fn.search("[^a-zA-Z0-9]", "bW") -- Search backward
--
--    if prev_special < col then
--        vim.cmd("normal! h") -- Move one char back
--    else
--        vim.cmd("normal! b") -- Move to previous word
--    end
--end


-- Keymaps for Normal Mode
vim.keymap.set("n", "<Tab>", smart_tab_forward, { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", smart_tab_backward, { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", smart_tab_forward, { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", smart_tab_backward, { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ctrl_arrow_forward, { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", ctrl_arrow_backward, { noremap = true, silent = true })

-- Keymaps for Insert Mode
vim.keymap.set("i", "<Tab>", insert_mode_tab, { noremap = true, silent = true })
vim.keymap.set("i", "<S-Tab>", insert_mode_shift_tab, { noremap = true, silent = true })
vim.keymap.set("i", "<Right>", insert_mode_tab, { noremap = true, silent = true })
vim.keymap.set("i", "<Left>", insert_mode_shift_tab, { noremap = true, silent = true })
vim.keymap.set("i", "<C-Right>", insert_mode_tab, { noremap = true, silent = true })
vim.keymap.set("i", "<C-Left>", insert_mode_shift_tab, { noremap = true, silent = true })

-- Automatically Load This File
if not vim.g.tab_behavior_loaded then
    vim.g.tab_behavior_loaded = true
    vim.cmd("luafile " .. debug.getinfo(1).source:sub(2))
end

