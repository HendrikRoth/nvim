{ lib, pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
    settings = {
      notify_on_error = false;
      notify_no_formatters = false;
      format_on_save = {
        lspFallback = true;
        timeoutMs = 1000;
      };
      formatters_by_ft = {
        css = [ "biome" ];
        go = [ "gofmt" ];
        html = [
          "biome"
          "prettier"
        ];
        javascript = [
          "biome"
          "prettier"
        ];
        javascriptreact = [
          "biome"
          "prettier"
        ];
        json = [ "biome" ];
        lua = [ "stylua" ];
        markdown = [ "biome" ];
        nix = [ "nixfmt" ];
        python = [
          "isort"
          "black"
        ];
        terraform = [ "tofu_fmt" "terraform_fmt" ];
        typescript = [
          "biome"
          "prettier"
        ];
        typescriptreact = [
          "biome"
          "prettier"
        ];
        yaml = [ "biome" "yamlfmt" ];
        "_" = [ "trim_whitespace" ];
      };
      formatters = {
        shellcheck.command = lib.getExe pkgs.shellcheck;
        shfmt.command = lib.getExe pkgs.shfmt;
      };
    };
  };
}
