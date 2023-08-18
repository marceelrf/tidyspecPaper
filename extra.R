library(tidyverse)

UV <- modeldatatoo::data_chimiometrie_2019()


UV %>%
  pivot_longer(cols = starts_with("wvlgth"),
               names_to = "code",
               values_to = "Wavelength") %>%
  pivot_longer(cols = soy_oil:barley,
               names_to = "type",values_to = "val") %>%
  ggplot(aes(x = Wavelength, y = val, col = type)) +
  geom_line()


quarto::quarto_render(input = "tidyspecPaper.qmd",
                      output_format = "all")
#Expansion and evolution of the R programming language
