{ ... }:
{
  plugins.fidget = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      notification = {
        window = {
          align = "top";
          winblend = 10;
        };
        view = {
          stack_upwards = false;
        };
      };
    };
  };
}
