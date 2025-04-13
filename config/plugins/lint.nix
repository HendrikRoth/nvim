{ ... }:
{
  plugins.lint = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
    lintersByFt = {
      dockerfile = [ "hadolint" ];
      gitcommit = [ "vale" ];
      go = [ "golangcilint" ];
      json = [ "jq" ];
      markdown = [ "vale" ];
      nix = [ "nix" ];
      norg = [ "vale" ];
      python = [ "pylint" ];
      rst = [ "vale" ];
      terraform = [ "tflint" ];
      text = [ "vale" ];
      yaml = [ "yamllint" ];
    };
  };
}
