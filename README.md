# ¿Que es esto?

Esto es la configuracion actual que uso para trabajar en mi Vim.

## ¿Para que lenguajes de programacion esta preparado (o al menos lo intenta)

* Go
* Javascript (requiere prettier)
* HTML

## Uso el sistema nativo de carga de paquetes de VIM.

### Aqui algunos comandos utiles para este sistema

#### Agregar un paquete (ejemplo agregando vim-airline)

Este primer comando solo es util si no hemos creado un init antes

Nota: {PROPOSITO DE CARPETA} significa para que lenguaje o tecnologia sirve el pluggin

```bash
git submodule init

git submodule add http://github.com/vim-airline/vim-airline .vim/pack/{PROPOSITO DE CARPETA}/start/vim-airline

git add .gitmodules .vim/pack/theme/start/vim-airline

git commit
```

### Actualizar los modulos

```bash
git submodule update --remote --merge
git commit
```

### Eliminar paquete (ejemplo eliminando vim-airline)

```bash
git submodule deinit .vim/pack/theme/start/vim-airline
git rm .vim/pack/theme/start/vim-airline
rm -Rf .git/modules/vim/pack/theme/start/vim-airline
git commit
```

## Instalacion de paquetes especiales.
Deoplete require de python3 y asi tambien de pynvin

(Ubuntu)

```bash
sudo apt install python3-pip
pip3 install --user pynvim
```

Fzf es un sistema de busqueda independiente de vim, por lo que para usarlo debemos instalarlo por nuestra cuenta.
Este funcionara con el pluggin de fzf.vim
```bash
sudo apt install fzf	
```
