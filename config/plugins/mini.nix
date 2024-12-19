{ pkgs, ... }: {
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      comment = {};
      icons = {};
      pick = {};
      starter = {};
      surround = {};
    };
  };
}
