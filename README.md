# docker-coruja

Imagem Docker com coruja_jlapsapi-1.7 pré instalado

# Comandos úteis #

## Rodando julius com as configurações##
```shell
docker run -it --rm --device /dev/snd/controlC0:/dev/snd/controlC0  --device /dev/snd/hwC0D0:/dev/snd/hwC0D0  --device /dev/snd/hwC0D3:/dev/snd/hwC0D3  --device /dev/snd/pcmC0D0c:/dev/snd/pcmC0D0c  --device /dev/snd/pcmC0D0p:/dev/snd/pcmC0D0p  --device /dev/snd/pcmC0D3p:/dev/snd/pcmC0D3p  --device /dev/snd/seq:/dev/snd/seq  --device /dev/snd/timer:/dev/snd/timer fabito/docker-coruja julius -C /usr/src/coruja_jlapsapi/julius.jconf
```