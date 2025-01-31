{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    #package = pkgs.rofi-wayland;
    theme = {
      configuration = {
        modi = "drun";
        case-sensitive = false;
        display-drun = " ";
        drun-display-format = "{name}";
      };
      "window" = {
        transparency = "real";
        location = "center";
        anchor = "center";
        fullscreen = false;
        width = "700px";
        x-offset = "0px";
        y-offset = "0px";
        enabled = true;
        margin = "0px";
        padding = "0px";
        border = "0px solid";
        border-radius = "12px";
        # border-color = "@selected";
        # background-color = "@background";
        cursor = "default";
      };
      mainbox = {
        enabled = true;
        spacing = "10px";
        margin = "0px";
        padding = "15px";
        border = "0px solid";
        border-radius = "12px";
        # border-color = "@selected";
        # background-color = "@background-alt";
        # text-color = "@foreground";
        children = [
          "prompt"
          "entry"
        ];
      };
      prompt = {
        enabled = true;
        # background-color = "inherit";
        # text-color = "inherit";
      };
      textbox-prompt-colon = {
        enabled = true;
        expand = false;
        str = "::";
        # background-color = "inherit";
        # text-color = "inherit";
      };
      entry = {
        enabled = true;
        # background = "inherit";
        # text-color = "inherit";
        cursor = "text";
        placeholder = "Search...";
        # placeholder-color = "inherit";
      };
      listview = {
        enabled = true;
        columns = "2";
        lines = "8";
        cycle = true;
        dynamic = true;
        scrollbar = false;
        layout = "vertical";
        reverse = false;
        fixed-height = true;
        fixed-columns = true;
        spacing = "5px";
        margin = "0px";
        padding = "0px";
        border = "0px solid";
        border-radius = "0px";
        # border-color = "@selected";
        # background-color = "transparent";
        # text-color = "@foreground";
        cursor = "default";
      };
      scrollbar = {
        handle-width = "5px";
        # handle-color = "@selected";
        border-radius = "0px";
        # background-color = "@background-alt";
      };
      element = {
        enabled = true;
        spacing = "10px";
        margin = "0px";
        padding = "5px";
        border = "0px solid";
        border-radius = "12px";
        # border-color = "@selected";
        # background-color = "transparent";
        # text-color = "@foreground";
        # cursor = "pointer";
      };
      "element normal.normal" = {
        # background-color = "@backgroud";
        # text-color = "@foreground";
      };
      "element selected.normal" = {
        # background-color = "@selected";
        # text-color = "@background";
      };
      element-icon = {
        # background-color = "transparent";
        # text-color = "inherit";
        size = "32px";
        # cursor = "inherit";
      };
      element-text = {
        # background-color = "transparent";
        # text-color = "inherit";
        # highlight = "inherit";
        # cursor = "inherit";
        vertical-align = "0.5";
        horizontal-align = "0.0";
      };
      textbox = {
        vertical-align = "0.5";
        horizontal-align = "0.0";
        highlight = "none";
      };
    };
  };
}
