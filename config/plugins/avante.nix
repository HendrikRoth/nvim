{ ... }:
{
  plugins.avante = {
    enable = true;
    lazyLoad.settings.event = [ "BufEnter" ];

    settings = {
      provider = "openrouter";
      vendors = {
        openrouter = {
          __inherited_from = "openai";
          endpoint = "https://openrouter.ai/api/v1";
          api_key_name = "OPENROUTER_API_KEY";
          model = "google/gemini-2.0-flash-exp:free";
        };
      };
    };
  };
}
