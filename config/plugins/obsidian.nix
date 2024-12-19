{ pkgs, ... }: {
  plugins.obsidian = {
    enable = true;
    lazyLoad.settings.ft = "markdown";
    settings = {
      completion.min_chars = 2;
      new_notes_location = "current_dir";
      dir = "~/Notes";
      picker.name = "mini.pick";
    };
  };
}
