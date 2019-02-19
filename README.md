
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
#>  Maximum Derek! 
#> 
#>  ~ Derek

chidi()
#> 
#>  This is a mess, morally speaking. This is a putrid, disgusting bowl of ethical soup. 
#> 
#>  ~ Chidi

derek()
#> 
#>  Derek! 
#> 
#>  ~ Derek

eleanor()
#> 
#>  Why do bad things always happen to mediocre people who are lying about their identities? 
#> 
#>  ~ Eleanor

janet()
#> 
#>  I suppose after 802 reboots I must have gained the ability to lie. That's fun! I want to try to lie again. I love your outfit. 
#> 
#>  ~ Janet

jason()
#> 
#>  I was just about to tell an awesome story about a wing-eating contest that I lost, and a barfing contest that I won, but then a hole opened up in the ground. 
#> 
#>  ~ Jason

michael()
#> 
#>  I feel like Friends in Season 8. Out of ideas and forcing Joey and Rachel together, even though it made no sense. 
#> 
#>  ~ Michael

pillboi()
#> 
#>  You've got dreams in life? That's lit. 
#> 
#>  ~ Pillboi

tahani()
#> 
#>  I understand nothing. 
#> 
#>  ~ Tahani


library(cowsay)
library(magrittr)

soul_squad() %>% 
  as.character() %>% 
  say(by = "random")
#> Colors cannot be applied in this environment :( Try using a terminal or RStudio.
#> 
#>  ----- 
#> It's a rare occurrence, like a double rainbow. Or like someone on the Internet saying, "You know what? You've convinced me I was wrong."
#> ~ Michael 
#>  ------ 
#>     \   
#>      \  
#>       \
#>        \   _,
#>       -==<' `
#>           ) /
#>          / (_.
#>         |  ,-,`\
#>          \\   \ \
#>           `\,  \ \
#>            ||\  \`|,
#>  jgs      _|| `=`-'
#>          ~~`~`
```
