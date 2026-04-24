{ inputs, ... }:

final: prev: {
  setrixtui = inputs.setrixtui.packages.${final.system}.default;
  meowdo = inputs.meowdo.packages.${final.system}.default;
}