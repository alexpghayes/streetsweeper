
<!-- README.md is generated from README.Rmd. Please edit that file -->
``` r
lm_mod <- lm(hp ~ ., mtcars)
data("sleepstudy", package = "lme4")
mixed_mod <- lmerTest::lmer(Reaction ~ Days + (Days | Subject), sleepstudy)

broom::tidy(mixed_mod)
#> Warning: 'tidy.merMod' is deprecated.
#> See help("Deprecated")
#> Error: Column 6 must be named
broom.mixed:::tidy.merMod(mixed_mod)
#> # A tibble: 6 x 8
#>   effect  group   term        estimate std.error    df statistic   p.value
#>   <chr>   <chr>   <chr>          <dbl>     <dbl> <dbl>     <dbl>     <dbl>
#> 1 fixed   fixed   (Intercept) 251.          6.82  17.0     36.8   1.17e-17
#> 2 fixed   fixed   Days         10.5         1.55  17.0      6.77  3.26e- 6
#> 3 ran_pa… Subject sd_(Interc…  24.7        NA     NA       NA    NA       
#> 4 ran_pa… Subject sd_Days       5.92       NA     NA       NA    NA       
#> 5 ran_pa… Subject cor_(Inter…   0.0656     NA     NA       NA    NA       
#> 6 ran_pa… Residu… sd_Observa…  25.6        NA     NA       NA    NA

streetsweeper::use_tidy_method_from_broom(lm_mod)
#> # A tibble: 11 x 5
#>    term        estimate std.error statistic p.value
#>    <chr>          <dbl>     <dbl>     <dbl>   <dbl>
#>  1 (Intercept)   79.0     185.        0.428 0.673  
#>  2 mpg           -2.06      2.09     -0.987 0.335  
#>  3 cyl            8.20     10.1       0.813 0.425  
#>  4 disp           0.439     0.149     2.94  0.00778
#>  5 drat          -4.62     16.1      -0.287 0.777  
#>  6 wt           -27.7      19.3      -1.44  0.166  
#>  7 qsec          -1.78      7.36     -0.242 0.811  
#>  8 vs            25.8      19.9       1.30  0.208  
#>  9 am             9.49     20.8       0.457 0.652  
#> 10 gear           7.22     14.6       0.494 0.627  
#> 11 carb          18.7       7.03      2.67  0.0144
streetsweeper::use_tidy_method_from_broom.mixed(mixed_mod)
#> # A tibble: 6 x 8
#>   effect  group   term        estimate std.error    df statistic   p.value
#>   <chr>   <chr>   <chr>          <dbl>     <dbl> <dbl>     <dbl>     <dbl>
#> 1 fixed   fixed   (Intercept) 251.          6.82  17.0     36.8   1.17e-17
#> 2 fixed   fixed   Days         10.5         1.55  17.0      6.77  3.26e- 6
#> 3 ran_pa… Subject sd_(Interc…  24.7        NA     NA       NA    NA       
#> 4 ran_pa… Subject sd_Days       5.92       NA     NA       NA    NA       
#> 5 ran_pa… Subject cor_(Inter…   0.0656     NA     NA       NA    NA       
#> 6 ran_pa… Residu… sd_Observa…  25.6        NA     NA       NA    NA

# so this works??
streetsweeper::use_tidy_method_from_broom(mixed_mod)
#> # A tibble: 6 x 8
#>   effect  group   term        estimate std.error    df statistic   p.value
#>   <chr>   <chr>   <chr>          <dbl>     <dbl> <dbl>     <dbl>     <dbl>
#> 1 fixed   fixed   (Intercept) 251.          6.82  17.0     36.8   1.17e-17
#> 2 fixed   fixed   Days         10.5         1.55  17.0      6.77  3.26e- 6
#> 3 ran_pa… Subject sd_(Interc…  24.7        NA     NA       NA    NA       
#> 4 ran_pa… Subject sd_Days       5.92       NA     NA       NA    NA       
#> 5 ran_pa… Subject cor_(Inter…   0.0656     NA     NA       NA    NA       
#> 6 ran_pa… Residu… sd_Observa…  25.6        NA     NA       NA    NA
```
