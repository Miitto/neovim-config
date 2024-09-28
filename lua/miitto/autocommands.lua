local function lsp_attach(ev)
	local buf = ev.buf
	local client = vim.lsp.get_client_by_id(ev.data.client_id)
end

return {
	lsp_attach = lsp_attach,
}
