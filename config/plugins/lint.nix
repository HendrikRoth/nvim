{ ... }:
{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      dockerfile = [ "hadolint" ];
      gitcommit = [ "vale" ];
      json = [ "jq" ];
      markdown = [ "vale" ];
      norg = [ "vale" ];
      rst = [ "vale" ];
      text = [ "vale" ];
      yaml = [ "yamllint" ];
    };
  };
}
