# nrm

> 🖋️ simply a better norming experience  
> *by [kiroussa](https://profile.intra.42.fr/users/kiroussa)*

## what?

[nrm](https://github.com/seekrs/nrm) is a [norminette](https://github.com/42School/norminette/tree/master/norminette) wrapper that simply aims to prettify your `norminette` calls.

## features

- prettier output (objectively so)
  - spinner
  - colors
  - trims norm errors if there are more than `10`
- timeout support
  - norminette won't try parsing a file for more than `2` seconds
- single python3 file
  - don't like some messages? wanna change some values around? go ahead and hack your way into it

## install

we provided a simple shell script to install [nrm](https://github.com/seekrs/nrm)

simply clone this repository and run it via your favorite shell
```bash
# clone the repository
git clone https://github.com/seekrs/nrm
cd nrm

# make the installer executable and run it
chmod +x ./install.sh
bash ./install.sh
``

## license

this project is published into the public domain.  
it's a ~250-ish line script filled with shitty code, who would care?
