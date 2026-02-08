# Villain ASCII Animation

Este repo incluye una animación ASCII para terminal y un hook opcional de Git para mostrarla durante `git push`.

## Uso rápido (bash)

```bash
./scripts/villain_anim.sh 2.2 "corriendo script..."
```

## Uso en R

```r
source("scripts/villain_anim.R")
villain_anim(1.8, "R: preparando el hechizo...")
```

## Hook de Git (pre-push)

Para instalar el hook de manera versionada:

```bash
./hooks/install_hooks.sh
```

Esto copia `hooks/pre-push` a `.git/hooks/pre-push`.

## Nota sobre Pull Requests

GitHub no soporta animaciones en la UI del PR; solo se puede publicar ASCII estático en comentarios o outputs de Actions.
