{pkgs, lib, ...}:
{
  programs.nvf = {
    enable = true;
    settings = {
       vim = {
        theme = {
        enable = true;
      };
    
      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;

      languages = {
        enableLSP = true;
	enableTreesitter = true;

	nix.enable = true;
	ts.enable = true;
	rust.enable = true;
      };
      };
    };
  };
}