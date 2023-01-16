vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer сам себя
    use 'wbthomason/packer.nvim'

    -----------------------------------------------------------
    -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
    -----------------------------------------------------------
    -- required
    use 'kyazdani42/nvim-web-devicons'
    -- Цветовая схема
    --use 'joshdick/onedark.vim'
    use 'ayu-theme/ayu-vim'
    --- Информационная строка внизу
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}, }
    -- Табы вверху
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
    use 'xiyaowong/nvim-transparent'

    -----------------------------------------------------------
    -- LSP и автодополнялка
    -----------------------------------------------------------
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'
    -- Collection of configurations for built-in LSP client
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    -- Автодополнялка
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    --- Автодополнлялка к файловой системе
    use 'hrsh7th/cmp-path'
    -- Snippets plugin
    use 'L3MON4D3/LuaSnip'

    -----------------------------------------------------------
    -- НАВИГАЦИЯ
    -----------------------------------------------------------
    -- Файловый менеджер
    --use 'nvim-neo-tree/neo-tree.nvim'
    --use 's1n7ax/nvim-window-picker'
    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          --{
          --  -- only needed if you want to use the commands with "_with_window_picker" suffix
          --  's1n7ax/nvim-window-picker',
          --  tag = "v1.*",
          --}
        },
    }
    --use { 'kyazdani42/nvim-tree.lua',
    --requires = 'kyazdani42/nvim-web-devicons',
    --config = function() require'nvim-tree'.setup {} end, }
    -- Навигация внутри файла по классам и функциям
    --use 'majutsushi/tagbar'
    -- Замена fzf и ack
    use { 'nvim-telescope/telescope.nvim',
      requires = {
        {'nvim-lua/plenary.nvim'}
      },
    }
    use {
      "ThePrimeagen/refactoring.nvim",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-treesitter/nvim-treesitter",
      }
    }


    -----------------------------------------------------------
    -- PYTHON
    -----------------------------------------------------------
    --- Шапка с импортами приводим в порядок
    --use 'fisadev/vim-isort'
    -- Поддержка темплейтом jinja2
    --use 'mitsuhiko/vim-jinja'

    -----------------------------------------------------------
    -- HTML и CSS
    -----------------------------------------------------------
    -- Подсвечивает закрывающий и откры. тэг. Если, где-то что-то не закрыто, то не подсвечивает.
    --use 'idanarye/breeze.vim'
    -- Закрывает автоматом html и xml тэги. Пишешь <h1> и он автоматом закроется </h1>
    --use 'alvan/vim-closetag'
    -- Подсвечивает #ffffff
    --use 'ap/vim-css-color'

    -----------------------------------------------------------
    -- РАЗНОЕ
    -----------------------------------------------------------
    -- Линтер, работает для всех языков
    use 'dense-analysis/ale'
    -- Стартовая страница, если просто набрать vim в консоле
    use 'mhinz/vim-startify'
    -- Обрамляет или снимает обрамление. Выдели слово, нажми S и набери <h1>
    use 'tpope/vim-surround'
    -- Может повторять через . vimsurroun
    use 'tpope/vim-repeat'
    -- Закрывает автоматом скобки
    use 'cohama/lexima.vim'
    -- use "Pocco81/auto-save.nvim"
    -- Комментирует по gc все, вне зависимости от языка программирования
    use 'numToStr/Comment.nvim'
    -- Считает кол-во совпадений при поиске
    use 'google/vim-searchindex'
    -- Даже если включена русская раскладка vim команды будут работать
    use 'powerman/vim-plugin-ruscmd'
    -- 'Автоформатирование' кода для всех языков
    use 'Chiel92/vim-autoformat'
    -- ]p - вставить на строку выше, [p - ниже
    use 'tpope/vim-unimpaired'
    --- popup окошки
    use 'nvim-lua/popup.nvim'
    -- Обрамляет строку в теги по ctrl- y + ,
    use 'mattn/emmet-vim'
end)
