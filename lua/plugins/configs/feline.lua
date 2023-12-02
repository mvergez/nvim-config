local ctp_feline = require('catppuccin.groups.integrations.feline')

-- important to put an empty table here
ctp_feline.setup({})

require("feline").setup({
    components = ctp_feline.get()
})
