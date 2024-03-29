vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use {
      "kevinhwang91/nvim-ufo",
      requires = {
        "kevinhwang91/promise-async",
        {
          "luukvbaal/statuscol.nvim",
          config = function()
            local builtin = require("statuscol.builtin")
            require("statuscol").setup(
              {
                relculright = true,
                segments = {
                  {text = {builtin.foldfunc}, click = "v:lua.ScFa"},
                  {text = {"%s"}, click = "v:lua.ScSa"},
                  {text = {builtin.lnumfunc, " "}, click = "v:lua.ScLa"}
                }
              }
            )
          end

        }
      }
    }

    use "windwp/nvim-ts-autotag"

    use "nvim-tree/nvim-web-devicons"

    use "wbthomason/packer.nvim"

    use { "xiyaowong/transparent.nvim" }

    use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
    })

    use "cohama/lexima.vim"

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        -- or                            , branch = "0.1.x",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use "lumiliet/vim-twig"
    use "othree/html5.vim"

    -- use {"barrett-ruth/import-cost.nvim", { run = "sh install.sh npm" }}

--[[
    colors 
]]--
    use { "doums/darcula", as = "darcula" }
    use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }
    use { "navarasu/onedark.nvim", as = "onedark" }
    use { "brenoprata10/nvim-highlight-colors" }

    use {
		"nvim-treesitter/nvim-treesitter",
		requires = {
			{ "JoosepAlviste/nvim-ts-context-commentstring" },
		},
		{run = ":TSUpdate"}
	}

    use("akinsho/toggleterm.nvim")

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use { "JoosepAlviste/nvim-ts-context-commentstring" }

    use { "numToStr/Comment.nvim" }

    use("mbbill/undotree")

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup{}
        end
    }

    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},             -- Required
            {"williamboman/mason.nvim"},           -- Optional
            {"williamboman/mason-lspconfig.nvim"}, -- Optional

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},         -- Required
            {"hrsh7th/cmp-nvim-lsp"},     -- Required
            {"hrsh7th/cmp-buffer"},       -- Optional
            {"hrsh7th/cmp-path"},         -- Optional
            {"saadparwaiz1/cmp_luasnip"}, -- Optional
            {"hrsh7th/cmp-nvim-lua"},     -- Optional

            -- Snippets
            {"L3MON4D3/LuaSnip"},             -- Required
        }
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    
    use "lukas-reineke/indent-blankline.nvim"

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
        end
    }

end)

