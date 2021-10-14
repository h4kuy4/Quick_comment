local fn = vim.fn

config = {
    cpp    = "//",
    c      = "//",
    java   = "//",
    go     = "//",
    kt     = "//",
    rust   = "//",
    sh     = "#",
    py     = "#",
    lua    = "--",
}

local function is_commented(line, commentForm)
    if string.sub(line, 1, string.len(commentForm)) == commentForm then
        return true
    else 
        return false
    end
end

local function set_comment(line, commentForm)
    return commentForm.. " " .. line
end

local function delet_comment(line, commentForm)
    return string.sub(line, string.len(commentForm) + 2)
end

function _G.v_comment()
    local lstart = fn.getpos("'<")[2]
    local lend = fn.getpos("'>")[2]
    local commentForm = config[vim.bo.filetype]
    if commentForm == nil then
        print("This filetype is not supported!")
        return
    end
    for index = lstart, lend do
        local line = fn.getline(index)
        if is_commented(line, commentForm) then
            fn.setline(index, delet_comment(line, commentForm))
        else 
            fn.setline(index, set_comment(line, commentForm))
        end
    end
end

function _G.n_comment()
    local commentForm = config[vim.bo.filetype]
    if commentForm == nil then
        print("This filetype is not supported!")
        return
    end
    local line = fn.getline(".")
    if is_commented(line, commentForm) then
        fn.setline(".", delet_comment(line, commentForm))
    else 
        fn.setline(".", set_comment(line, commentForm))
    end
end

-- return{comment = comment}
vim.api.nvim_set_keymap("v", "co", ":lua _G.v_comment()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "co", ":lua _G.n_comment()<CR>", {noremap = true})
