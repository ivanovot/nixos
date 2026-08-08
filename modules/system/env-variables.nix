{ config, lib, pkgs, ... }:

{
  environment.variables = {
    #__GL_GSYNC_ALLOWED = "0";
    # Ограничиваем размер кэша шейдеров (~20 ГБ) во избежание утечки памяти
    #__GL_SHADER_DISK_CACHE_SIZE = "21474836480"; 
    # Запрещаем драйверу внезапно удалять шейдеры во время игрового процесса
    #__GL_SHADER_DISK_CACHE_SKIP_CLEANUP = "1";
  };
}
