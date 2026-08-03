{ inputs, ... }:

final: prev: {
  setrixtui = inputs.setrixtui.packages.${final.stdenv.hostPlatform.system}.default;
  meowdo = inputs.meowdo.packages.${final.stdenv.hostPlatform.system}.default;
  ducksay = inputs.ducksay.packages.${final.stdenv.hostPlatform.system}.default;
  bluetui = inputs.bluetui.packages.${final.stdenv.hostPlatform.system}.default;
  zen-browser = inputs.zen-browser.packages.${final.stdenv.hostPlatform.system}.default;
  kwin-effects-glass = inputs.kwin-effects-glass.packages.${final.stdenv.hostPlatform.system}.default;
}