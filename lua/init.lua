local function set_and_save_theme(theme)
    vim.cmd("colorscheme " .. theme)
    -- 保存该主题到theme_save.vim以供下次启动时读取
    local save_file_path = vim.fn.stdpath('config') .. '/theme_save.vim'
    vim.fn.writefile({"colorscheme " .. theme}, save_file_path)
end

local function theme_picker()
    local actions = require('telescope.actions')
    local action_state = require('telescope.actions.state')

    require('telescope.builtin').colorscheme({
        attach_mappings = function(_, map)
            map('i', '<CR>', function(bufnr)
                local selected_theme = action_state.get_selected_entry().value
                set_and_save_theme(selected_theme)
                actions.close(bufnr)
            end)
            return true
        end
    })
end

-- 你可以绑定这个函数到一个命令或键位上
vim.api.nvim_create_user_command('PickColorTheme', theme_picker, {})

local theme_save_path = vim.fn.stdpath('config') .. '/theme_save.vim'
if vim.fn.filereadable(theme_save_path) == 1 then
    vim.cmd('source ' .. theme_save_path)
else
    vim.cmd.colorscheme("catppuccin")  -- 如果没有保存的主题文件，则加载默认主题
end

-- Lua 配置示例
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])
