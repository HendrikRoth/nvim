{ pkgs, ... }: {
  plugins = {
    dap = {
      enable = true;
    };

    dap-python.enable = true;
    dap-ui.enable = true;
    dap-virtual-text.enable = true;

    dap-go = {
      enable = true;
      settings.delve.path = "${pkgs.delve}/bin/dlv";
    };
  };
}
