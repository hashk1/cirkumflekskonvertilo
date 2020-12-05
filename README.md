# Cirkumflekskonvertilo

## What's this?
This is a circumflex(cirkumflekso) and breve(u-hoketo) converter in Esperanto.  
It converts the surrogate characters to circumflex/brave characters.  
This source code is written in [crystal](https://crystal-lang.org). 

## Surrogate Notations
It supports three notations:
- H-convention (Zamenhof's convention)   
  [Ch, ch, Gh, gh, Hh, hh, Jh, jh, Sh, sh, W, w] &rarr; [Ĉ, ĉ, Ĝ, ĝ, Ĥ, ĥ, Ĵ, ĵ, Ŝ, ŝ, Û, û]  
  The original convention [U, u] &rarr; [Ǔ, ǔ] is not supported.
- X-convention  
  [Cx, cx, Gx, gx, Hx, hx, Jx, jx, Sx, sx, Ux, ux] &rarr; [Ĉ, ĉ, Ĝ, ĝ, Ĥ, ĥ, Ĵ, ĵ, Ŝ, ŝ, Û, û]
- ^-convention  
[C^, c^, G^, g^, H^, h^, J^, j^, S^, s^, U^, u^] &rarr; [Ĉ, ĉ, Ĝ, ĝ, Ĥ, ĥ, Ĵ, ĵ, Ŝ, ŝ, Û, û]  
[U~, u~] &rarr; [Û, û]

## Usage
1. Install crystal, see [install page](https://crystal-lang.org/install/) for detail.
1. convert input text: `crystal konv.cr [input.txt]` or `cat [input.txt] | crystal konv.cr`.

If you want to build the code: `crystal build knov.cr`, then `./konv [input.txt]` or `cat [input.txt] | ./konv`

## License
The source code is licensed MIT.

