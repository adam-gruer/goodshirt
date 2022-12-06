
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img 
         id="main-image"
         src="goodshirt.png" 
         alt="Thee separate photos of the The good Place characters Chidi, Janet and Tahini, join together in a horizontal strip."
         style="max-width: 100%;
                width: 50em;
                border-radius: 80%;"
    />

# Note please upgrade to version 3.0.0

The Good Place quotes API is no longer available. v 3.0.0 ships the
quote data with the package and remover calls to the defunct api.

# goodshirt

The goal of goodshirt is to provide The Good Place Quotes in your R
session. Previously an R client to The Good Place Quotes API by Klaudia
Rozgonyiova. <https://glitch.com/~good-place-quotes>
<https://github.com/EffingKay/the-good-place-quotes>

Now in version 3.0.0 API calls are removed and quotes data ships with
the package

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
#>  (explaining his tattoo) It’s Chinese for "Japan." 
#> 
#>  ~ Michael

chidi()
#> 
#>  You know, I thought I'd have a stomachache right now, but weirdly... I do. 
#> 
#>  ~ Chidi

derek()
#> 
#>  Derek! 
#> 
#>  ~ Derek

eleanor()
#> 
#>  Pobody's nerfect. 
#> 
#>  ~ Eleanor

janet()
#> 
#>  Fun fact: Janet is me. 
#> 
#>  ~ Janet

jason()
#> 
#>  I'm telling you, Molotov cocktails work. Anytime I had a problem and I threw a Molotov cocktail, boom! Right away, I had a different problem. 
#> 
#>  ~ Jason

michael()
#> 
#>  Parties are mere distractions from the relentlessness of entropy. We're all just corpses who haven't yet begun to decay. 
#> 
#>  ~ Michael

pillboi()
#> 
#>  I refuse to discuss my fifth amendment rights until I concur with your attorney. 
#> 
#>  ~ Pillboi

tahani()
#> 
#>  It's just that I'm not used to dressing like a plumberess. Is that what you call a female plumber or is a toilet sweep or, or clog wench? 
#> 
#>  ~ Tahani


library(cowsay)
#> Warning: package 'cowsay' was built under R version 4.2.2
library(magrittr)
#> Warning: package 'magrittr' was built under R version 4.2.2

soul_squad() %>% 
  as.character() %>% 
  say(by = "random")
#> 
#>  ------------- 
#> I can't believe we get to ride a real-life Optimus Prime. I call right nipple. That's shotgun on Optimus Prime.
#> ~ Jason 
#>  -------------- 
#>               \   
#>                \  
#>                 \
#> 
#>                   .="=.
#>                 _/.-.-.\_     _
#>                ( ( o o ) )    ))
#>                 |/  "  \|    //
#>                  \'---'/    //
#>            jgs   /`"""`\\  ((
#>                 / /_,_\ \\  \\
#>                 \_\_'__/  \  ))
#>                 /`  /`~\   |//
#>                /   /    \  /
#>           ,--`,--'\/\    /
#>           '-- "--'  '--'
```
