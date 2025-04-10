return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
 __       _______ .___________.__     _______. 
|  |     |   ____||           (_ )   /       | 
|  |     |  |__   `---|  |----`|/   |   (----` 
|  |     |   __|      |  |           \   \     
|  `----.|  |____     |  |       .----)   |    
|_______||_______|    |__|       |_______/     
                                               
.______        ______     ______  __  ___  __  
|   _  \      /  __  \   /      ||  |/  / |  | 
|  |_)  |    |  |  |  | |  ,----'|  '  /  |  | 
|      /     |  |  |  | |  |     |    <   |  | 
|  |\  \----.|  `--'  | |  `----.|  .  \  |__| 
| _| `._____| \______/   \______||__|\__\ (__) 
                                               
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
    picker = {
      sources = {
        explorer = {
          -- hidden = true,
          -- No need to define explicitly; they are already in .gitignore
          -- ignored = true, -- by default false
          exclude = {
            -- "node_modules/",
            -- "dist/",
            -- ".next/",
            -- ".vite/",
            ".git",
            -- "__pycache__",
            -- ".gitlab/",
            -- "build/",
            -- "target/",
            -- "dadbod_ui/tmp/",
            -- "dadbod_ui/dev/",
            ".DS_Store",
          },
          include = {
            ".venv",
            -- 'package-lock.json',
            -- 'pnpm-lock.yaml',
            -- 'yarn.lock',
          },
          -- files = {
          --   ignored = true,
          --   hidden = true,
          -- },
          -- grep = {
          --   ignored = false,
          --   hidden = false,
          -- },
        },
      },
    },
  },
}
