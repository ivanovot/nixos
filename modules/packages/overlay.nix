{ inputs, ... }:

final: prev: {
  setrixtui = inputs.setrixtui.packages.${final.stdenv.hostPlatform.system}.default;
  ducksay = inputs.ducksay.packages.${final.stdenv.hostPlatform.system}.default;
  zen-browser = inputs.zen-browser.packages.${final.stdenv.hostPlatform.system}.default;
  pyroclear = inputs.pyroclear.packages.${final.stdenv.hostPlatform.system}.default;
  BedrockOnLinux = inputs.BedrockOnLinux.packages.${final.stdenv.hostPlatform.system}.default;
}