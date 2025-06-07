-- ~/.config/nvim/lua/codebeam/init.lua (ora in codebeam.nvim/lua/codebeam/init.lua)

-- Rimuove tutte le evidenziazioni preesistenti
vim.cmd("hi clear")

-- Imposta lo sfondo scuro (essenziale per la nostra palette)
vim.o.background = "dark"

-- Importa la palette dei colori
local colors = require("codebeam.colors")

-- Importa e applica le definizioni di evidenziazione
local highlights = require("codebeam.highlights")
highlights.apply_highlights(colors.palette)

-- Ulteriori configurazioni per la barra di stato (opzionale ma consigliato)
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.light_gray, bg = colors.medium_gray, gui = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.lighter_gray, bg = colors.dark_gray, gui = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.light_gray, bg = colors.medium_gray })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.dark_gray, bg = colors.accent_green })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.subtle_green })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.neutral_green })

-- NOTA: `vim.o.termguicolors = true` non va messo qui, ma nel file di configurazione dell'utente
-- Questo perché è un'opzione di Neovim generale, non specifica del tema.