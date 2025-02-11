{ ... }:
{
  plugins.avante = {
    enable = true;

    settings = {
      provider = "openrouter";
      vendors = {
        openrouter = {
          __inherited_from = "openai";
          endpoint = "https://openrouter.ai/api/v1";
          api_key_name = "OPENROUTER_API_KEY";
          model = "google/gemini-2.0-flash-lite-preview-02-05:free";
        };
      };
    };
  };
}
