
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img 
         id="main-image"
         src="goodshirt.png" 
         alt="Thee separate photos of the The good Place characters Chidi, Janet and Tahini, join together in a horizontal strip."
         style="max-width: 100%;
                width: 50em;
                border-radius: 80%;"
    />

# goodshirt

The goal of goodshirt is to provide an R client to The Good Place Quotes
API by Klaudia Rozgonyiova. <https://glitch.com/~good-place-quotes>
<https://github.com/EffingKay/the-good-place-quotes>

## Installation

``` r
# install.packages("devtools")
devtools::install_github("adam-gruer/goodshirt")
```

## Example

Get a random quote

``` r
library(goodshirt)

soul_squad()
#> 
#>  Don't mind me. I'm just dropping off my afternoon gloves and picking up my early evening gloves. 
#> 
#>  ~ Tahani

chidi()
#> 
#>  This is a mess, morally speaking. This is a putrid, disgusting bowl of ethical soup. 
#> 
#>  ~ Chidi

derek()
#> 
#>  Maximum Derek! 
#> 
#>  ~ Derek

eleanor()
#> 
#>  Right now I'm the best student. I'm going to be the velociraptor. 
#> 
#>  ~ Eleanor

janet()
#> 
#>  Fun fact: Janet is me. 
#> 
#>  ~ Janet

jason()
#> 
#>  Long story short, it was all a dream. 
#> 
#>  ~ Jason

michael()
#> 
#>  Kissing is gross. You just mash your food holes together. It's not for that. 
#> 
#>  ~ Michael

pillboi()
#> 
#>  I refuse to discuss my fifth amendment rights until I concur with your attorney. 
#> 
#>  ~ Pillboi

tahani()
#> 
#>  I'm going to tell you the same thing that I told Mark Zuckerberg right before he ousted Eduardo Saverin. You are smart, you are capable, and the time has come to hit "unfriend." I also told Mark to lose the "the". Just "Facebook." That was me. 
#> 
#>  ~ Tahani


library(cowsay)
library(magrittr)

soul_squad() %>% 
  as.character() %>% 
  say(by = "random")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>     
#>  -------------- 
#> I miss being myself. Myself was the best.
#> ~ Jason 
#>  --------------
#>     \
#>       \
#>         \
#>               /""-._
#>               .       '-,
#>                :          '',
#>                 ;      *     '.
#>                  ' *         () '.
#>                    \               \
#>                     \      _.---.._ '.
#>                     :  .' _.--''-''  \ ,'
#>         .._           '/.'             . ;
#>         ; `-.          ,                \'
#>          ;   `,         ;              ._\
#>           ;    \     _,-'                ''--._
#>           :    \_,-'                          '-._
#>           \ ,-'                       .          '-._
#>           .'         __.-'';            \...,__       '.
#>         .'      _,-'        \              \   ''--.,__  '\
#>         /    _,--' ;         \              ;           \^.}
#>         ;_,-' )     \  )\      )            ;
#>              /       \/  \_.,-'             ;
#>             /                              ;
#>          ,-'  _,-'''-.    ,-.,            ;      PFA
#>       ,-' _.-'        \  /    |/'-._...--'
#>      :--``             )/
#>   '
#> 
```
