{ ... }:
{
  plugins.snacks = {
    enable = true;

    settings = {
      dashboard.enabled = false;
      bigfile.enabled = true;
      quickfile.enabled = true;
      explorer.enabled = false;
      input.enabled = true;
      notifier = {
        enabled = true;
        timeout = 1000;
        style = "minimal";
        top_down = false;
      };
      statuscolumn = {
        enabled = true;
        left = [ "mark" "sign" ];
        right = [ "fold" "git" ];
        git = {
          patterns = [ "GitSign" "MiniDiffSign" ];
        };
      };
      words = {
        debounce = 0;
        enabled = true;
      };
      scroll = {
        enabled = true;
      };
      indent = {
        enabled = true;
        only_scope = true;
        only_current = true;
      };
      picker = {
        enabled = true;
        layout.presset = "telescope";
      };
      image = {
        enabled = true;
        doc.inline = false;
        border = "none";
      };
    };
  };
}
