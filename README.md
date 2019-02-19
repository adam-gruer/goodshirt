
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
#>   "We're running out of time and I'm your only option?" A lot of guys your age said that to me just as the bar was about to close. But I never settled for them. Because my ex-boyfriend lived nearby, he was obsessed with me and he never slept because he was addicted to Adderall. There is always another option. 
#> 
#>  ~ Eleanor

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
#>   "We're running out of time and I'm your only option?" A lot of guys your age said that to me just as the bar was about to close. But I never settled for them. Because my ex-boyfriend lived nearby, he was obsessed with me and he never slept because he was addicted to Adderall. There is always another option. 
#> 
#>  ~ Eleanor

janet()
#> 
#>  Fun fact, all deceased members of the Portland Trail Blazers basketball team are also in The Bad Place. 
#> 
#>  ~ Janet

jason()
#> 
#>  Yo, you should listen to me. I came up with hundreds of plans in my life and only one of them got me killed. 
#> 
#>  ~ Jason

michael()
#> 
#>  Birth is a curse and existence is a prison. 
#> 
#>  ~ Michael

pillboi()
#> 
#>  I refuse to discuss my fifth amendment rights until I concur with your attorney. 
#> 
#>  ~ Pillboi

tahani()
#> 
#>  What is that? Is that jewelry? Not that it matters. It's just some jewelry I don't have. Can I have it? 
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
#>  ----- 
#> Why do bad things always happen to mediocre people who are lying about their identities?~
#> Eleanor 
#>  ------ 
#>     \   
#>      \
#>                 \`*-.
#>                  )  _`-.
#>                 .  : `. .
#>                 : _   '  \
#>                 ; *` _.   `*-._
#>                 `-.-'          `-.
#>                   ;       `       `.
#>                   :.       .       \
#>                   .\  .   :   .-'   .
#>                   '  `+.;  ;  '      :
#>                   :  '  |    ;       ;-.
#>                   ; '   : :`-:     _.`* ;
#>                .*' /  .*' ; .*`- +'  `*'
#>      [bug]     `*-*   `*-*  `*-*'
#> 
```
