return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
    "quangnguyen30192/cmp-nvim-ultisnips",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function()
    vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
    local cmp = require("cmp")
    local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
    local defaults = require("cmp.config.default")()
    return {
      completion = {
        completeopt = "menu,menuone,noinsert",
      },
      snippet = {
        expand = function(args)
          vim.fn["UltiSnips#Anon"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping({
          c = function()
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
            else
              cmp.complete()
            end
          end,
          i = function(fallback)
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
            elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
              cmp_ultisnips_mappings.jump_forwards(fallback)
            else
              fallback()
            end
          end,
          s = function(fallback)
            if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
              cmp_ultisnips_mappings.jump_forwards(fallback)
            else
              fallback()
            end
          end,
        }),
        ["<S-Tab>"] = cmp.mapping({
          c = function()
            if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
            else
              cmp.complete()
            end
          end,
          i = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
            elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
              cmp_ultisnips_mappings.jump_backwards(fallback)
            else
              fallback()
            end
          end,
          s = function(fallback)
            if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
              cmp_ultisnips_mappings.jump_backwards(fallback)
            else
              fallback()
            end
          end,
        }),
        ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), { "i" }),
        ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), { "i" }),
        ["<C-n>"] = cmp.mapping({
          c = function()
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
              vim.api.nvim_feedkeys(t("<Down>"), "n", true)
            end
          end,
          i = function(fallback)
            if cmp.visible() then
              cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
              fallback()
            end
          end,
        }),
        ["<C-p>"] = cmp.mapping({
          c = function()
            if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
            else
              vim.api.nvim_feedkeys(t("<Up>"), "n", true)
            end
          end,
          i = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
            else
              fallback()
            end
          end,
        }),
        ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["<C-e>"] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
        ["<CR>"] = cmp.mapping({
          i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
          c = function(fallback)
            if cmp.visible() then
              cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
            else
              fallback()
            end
          end,
        }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "ultisnips" },
        { name = "buffer" },
        { name = "path" },
      }),
      formatting = {
        format = function(_, item)
          local icons = require("lazyvim.config").icons.kinds
          if icons[item.kind] then
            item.kind = icons[item.kind] .. item.kind
          end
          return item
        end,
      },
      experimental = {
        ghost_text = {
          hl_group = "CmpGhostText",
        },
      },
      sorting = defaults.sorting,
    }
  end,
}
-- ---@param opts cmp.ConfigSchema
-- opts = function(_, opts)
--   local cmp = require("cmp")
--   local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
--   opts.snippet = {
--     expand = function(args)
--       vim.fn["UltiSnips#Anon"](args.body)
--     end,
--   }
--   opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
--     { name = "emoji" },
--     { name = "ultisnips" },
--   }))
--
--   local t = function(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
--   end
--
--   opts.mapping = {
--     ["<Tab>"] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
--         else
--           cmp.complete()
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
--         elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
--           cmp_ultisnips_mappings.jump_forwards(fallback)
--         else
--           fallback()
--         end
--       end,
--       s = function(fallback)
--         if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
--           cmp_ultisnips_mappings.jump_forwards(fallback)
--         else
--           fallback()
--         end
--       end,
--     }),
--     ["<S-Tab>"] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
--         else
--           cmp.complete()
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
--         elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
--           cmp_ultisnips_mappings.jump_backwards(fallback)
--         else
--           fallback()
--         end
--       end,
--       s = function(fallback)
--         if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
--           cmp_ultisnips_mappings.jump_backwards(fallback)
--         else
--           fallback()
--         end
--       end,
--     }),
--     ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), { "i" }),
--     ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), { "i" }),
--     ["<C-n>"] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           vim.api.nvim_feedkeys(t("<Down>"), "n", true)
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           fallback()
--         end
--       end,
--     }),
--     ["<C-p>"] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           vim.api.nvim_feedkeys(t("<Up>"), "n", true)
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           fallback()
--         end
--       end,
--     }),
--     ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
--     ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
--     ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
--     ["<C-e>"] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
--     ["<CR>"] = cmp.mapping({
--       i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
--       c = function(fallback)
--         if cmp.visible() then
--           cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
--         else
--           fallback()
--         end
--       end,
--     }),
--   }
-- end,
-- }
