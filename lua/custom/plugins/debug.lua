require('dap').configurations.cs = {
  {
    type = 'coreclr',
    name = 'Launch ASP.NET Core',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
    args = {},
    cwd = '${workspaceFolder}',
    stopAtEntry = false,
    console = 'internalConsole',
    env = {
      ASPNETCORE_ENVIRONMENT = 'Development',
      ASPNETCORE_URLS = 'https://localhost:44350;http://localhost:44351',
    },
    sourceFileMap = {
      ['/Views'] = '${workspaceFolder}/Views',
    },
  },
}

return {}
