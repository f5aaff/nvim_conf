vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--open nvim config folder
vim.keymap.set("n", "<leader>vpp", "<cmd>Explore ~.config/nvim/<CR>");

--dumb animation
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--open telescope
vim.keymap.set("n", "<leader><leader>","<cmd>Telescope<CR>")

--format & retab
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua vim.lsp.buf.format()<CR>:retab<CR>', { noremap = true, silent = true })

--lsp inspect hover
vim.keymap.set("n","<leader>gh",vim.lsp.buf.hover)

--telescope find files
vim.keymap.set("n", "<leader><space>fb", "<cmd>Telescope find_files<CR>")

--telescope git status
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>")

--toggle sidebar
vim.keymap.set("n", "<leader>sbt", "<cmd>SidebarNvimToggle<CR>")

--open new tab
vim.keymap.set("n", "<leader>gt", '<cmd>tabnew<CR>')

--toggle highlight search
vim.keymap.set("n", "<leader>hls", "<cmd>set hlsearch!<CR>")
