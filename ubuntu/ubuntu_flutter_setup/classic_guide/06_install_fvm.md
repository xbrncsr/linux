# 6. Install FVM

## A. Pub package

```bash
dart pub global activate fvm

```


## X. This part is already present in "1_bashrc_config.md"

```bash
echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.bashrc

```

```bash
source ~/.bashrc

```


## B. Config FVM

```bash
fvm --version

```

```bash
fvm config

```

```bash
# Crie o diretório "FVM" antes de executar o comando abaixo
fvm config --cache-path /home/$USER/_devprograms/fvm

```

```bash
# Listar FVM instaladas
fvm list

```

```bash
# Quais são as versões que existem disponíveis
fvm releases

```

```bash
fvm doctor

```

```bash
fvm install stable

```

```bash
fvm install 3.10.3

```


## C. Usando uma versão especifica do FVM em um projeto

```bash
# Dentro do VSCode no terminal:
fvm list

```

```bash
fvm use 3.10.3

```

```bash
fvm flutter doctor

```

```bash
### na raiz do projeto crie o seguinte:
#### source: https://fvm.app/docs/getting_started/configuration
.vscode/settings.json

```

```bash
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk",
  // Remove .fvm files from search
  "search.exclude": {
    "**/.fvm": true
  },
  // Remove from file watching
  "files.watcherExclude": {
    "**/.fvm": true
  }
}

```
