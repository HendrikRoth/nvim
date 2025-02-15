{ ... }:
{
  plugins.neotest = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    adapters = {
      vitest = {
        enable = true;
      };
      jest = {
        enable = true;
      };
      go = {
        enable = true;
      };
      python = {
        enable = true;
      };
    };
  };
}
