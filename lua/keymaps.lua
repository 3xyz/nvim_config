local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}


-- RESIZE WINDOW
map('n', '<M-h>', '<C-w>>', default_opts)
map('n', '<M-l>', '<C-w><', default_opts)
-- ВЫХОД
map('n', 'ZZ', ':wqa<CR>', default_opts)
-- УДАЛЕНИЕ БЕЗ КОПИРОВАНИЯ
map('n', 'x', '"_x', default_opts)
map('v', 'p', '"_dP', default_opts)
-- ТИПА 'НАЖИМАЕТ' НА ESC ПРИ БЫСТРОМ НАЖАТИИ JJ, ЧТОБЫ НЕ ТЯНУТСЯ
map('i', 'jj', '<Esc>', {noremap = true})
-- ОЧИЩАЕМ ПОСЛЕДНИЙ ПОИСК С ПОДСВЕТКОЙ
map('n', '?', ':nohl<CR>', default_opts)
-- СТРЕЛОЧКИ ОТКЛ. ИСПОЛЬЗОВАТЬ HJKL
--map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
--map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
--map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
--map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
-- ПРОЛИСТНУТЬ НА СТРАНИЦУ ВНИЗ / ВВЕРХ (КАК В БРАУЗЕРАХ)
--map('n', '<Space>', '<PageDown> zz', default_opts)
--map('n', '<C-Space>', '<PageUp> zz', default_opts)
-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {}) vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
-- NVIM TREE
map('n', '<leader><Tab>', ':Neotree toggle<cr>', default_opts)
-- ALE
-- map('n', 'gd', ':ALEGoToDefinition<CR>', default_opts)
map("v", "<leader>rf", ":lua require('refactoring').select_refactor()<CR>", { noremap = true, silent = true, expr = false })
-- MAPPINGS.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

cmd[[
nnoremap <leader>X <cmd>lua require('spectre').open()<CR>
"search current word
nnoremap <leader>xw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>x <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>xp viw:lua require('spectre').open_file_search()<cr>
]]


-----------------------------------------------------------
-- ФН. КЛАВИШИ ПО F1 .. F12
-----------------------------------------------------------
-- По F1 очищаем последний поиск с подсветкой
map('n', '<F1>', ':nohl<CR>', default_opts)
-- shift + F1 = удалить пустые строки
map('n', '<S-F1>', ':g/^$/d<CR>', default_opts)
-- <F2> для временной вставки из буфера, чтобы отключить авто идент
vim.o.pastetoggle='<F2>'
-- <F3> перечитать конфигурацию nvim Может не работать, если echo $TERM  xterm-256color
map('n', '<F3>', ':so ~/.config/nvim/init.lua<CR>:so ~/.config/nvim/lua/plugins.lua<CR>:so ~/.config/nvim/lua/settings.lua<CR>:so ~/.config/nvim/lua/keymaps.lua<CR>', { noremap = true })
-- <S-F3> Открыть всю nvim конфигурацию для редактирования
map('n', '<S-F3>', ':e ~/.config/nvim/init.lua<CR>:e ~/.config/nvim/lua/plugins.lua<CR>:e ~/.config/nvim/lua/settings.lua<CR>:e ~/.config/nvim/lua/keymaps.lua<CR>', { noremap = true })
-- <F4> Поиск слова под курсором
map('n', '<F4>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <S-F4> Поиск слова в модальном окошке
map('n', '<S-F4>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
-- <F5> разные вариации нумераций строк, можно переключаться
map('n', '<F5>', ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)
-- <F6> дерево файлов.
map('n', '<F6>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
-- <F8>  Показ дерева классов и функций, плагин majutsushi/tagbar
map('n', '<F8>', ':TagbarToggle<CR>', default_opts)
-- <F11> Проверка орфографии  для русского и английского языка
map('n', '<F11>', ':set spell!<CR>', default_opts)
map('i', '<F11>', '<C-O>:set spell!<CR>', default_opts)

-- WINDOW CYCLE MOVE
map('n', '<C-j>', '<C-W>w', default_opts)
map('n', '<C-k>', '<C-W>W', default_opts)
-- map('n', '<C-j>', ':wincmd h<CR>', default_opts)
-- map('n', '<C-k>', ':wincmd l<CR>', default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', default_opts)
