-- Set up settings for the previewers
vim.api.nvim_create_autocmd("User", {
    pattern = "TelescopePreviewerLoaded",
    callback = function(args)
        vim.wo.number = true
        vim.wo.wrap = true
    end,
})
