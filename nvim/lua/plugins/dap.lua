local dap = require("dap")
dap.adapters.godot = {
    type = "server",
    host = '127.0.0.1',
    port = 6006,
}
dap.configurations.gdscript = {
    {
	type = "godot",
	request = "launch",
	name = "Launch scene",
	project = "${workspaceFolder}",
	launch_scene = true,
    }
}
dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = '/home/exaryss/.local/share/extension/debugAdapters/bin/OpenDebugAD7'
}

dap.configurations.cpp = {
    {
	name = "Launch file",
	type = "cppdbg",
	request = "launch",
	program = function()
	    return vim.fn.input('Path to executable', vim.fn.getcwd() .. '/', 'file')
	end,
	cwd = '${workspaceFolder}',
	stopAtEntry = false,
    }
}
local dapui = require("dapui")
dapui.setup({
    mappings = {
	open = "o",
	remove = "d",
	edit = "e",
	repl = "r",
	toggle = "t",
    }
})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
