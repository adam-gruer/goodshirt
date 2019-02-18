
<!-- README.md is generated from README.Rmd. Please edit that file -->

<img 
         id="main-image"
         src="https://66.media.tumblr.com/cafe3dc5ce1536ef6a106de068396a9a/tumblr_p2lcr5Sj4F1tovxi6o4_250.jpg" 
         alt="chidi"
         style="max-width: 100%;
                width: 15em;
                border-radius: 100%;"
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
#>  I refuse to discuss my fifth amendment rights until I concur with your attorney. 
#> 
#>  ~ Pillboi

chidi()
#> 
#>  There really is an afterlife. I can't wait to have breakfast with Kant, and lunch with Michel Foucault, and then have dinner with Kant again so we can talk about what came up at breakfast! 
#> 
#>  ~ Chidi

derek()
#> 
#>  Maximum Derek! 
#> 
#>  ~ Derek

eleanor()
#> 
#>  In the words of a very wise Bed, Bath, and Beyond employee I once knew, "Go ahead and cry all you want, but you're gonna have to pay for that toilet plunger." 
#> 
#>  ~ Eleanor

janet()
#> 
#>  Fun fact: Mathematically, it's equally likely to either im- or ex-plode. 
#> 
#>  ~ Janet

jason()
#> 
#>  I miss being myself. Myself was the best. 
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
#>  Well, I suppose some part of me possibly has a sense of casual kinship with you, much as one might be fond of a street cat. 
#> 
#>  ~ Tahani
```
