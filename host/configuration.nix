{ pkgs, inputs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix # Include the results of the hardware scan.
      ../modules/nvidia.nix # Nvidia Drivers
      ../modules/stylix.nix # Stylix
      ../modules/krisp-patcher.nix # Patches Krisp into Discord NEED TO RUN KRISP-PATCHER
      ../modules/steam.nix # Steam
      ../modules/fish.nix # Fish
      ../modules/nvf.nix # NVF (neovim config)
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # Audio pipewire
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  networking.hostName = "hydrogen"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Networking
  networking.networkmanager.enable = true;

  # Locale & Time
  time.timeZone = "America/Chicago";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
  
  # X11 keymap
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  users.defaultUserShell = pkgs.fish;
  users.users.ari = {
    isNormalUser = true;
    description = "ari";
    extraGroups = [ "networkmanager" "wheel" ];
    #packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # Use CachyOS kernel
  boot.kernelPackages = pkgs.linuxPackages_cachyos;

  environment.systemPackages = [
    inputs.zen-browser.packages.${pkgs.system}.default
    pkgs.git
    pkgs.neovim
    pkgs.rofi-wayland
    pkgs.base16-schemes
    pkgs.eza
    pkgs.fastfetch
    pkgs.bat
    pkgs.zoxide
    pkgs.fzf
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  system.stateVersion = "24.11"; # Did you read the comment?

}