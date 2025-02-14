{ ... }:
{
  plugins.fidget = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";

    settings = {
      notification = {
        window = {
          align = "top";
          winblend = 60;
        };
        view = {
          stack_upwards = false;
        };
      };
      progress = {
        display = {
          done_ttl = 1;
        };
      };
    };
  };
}
