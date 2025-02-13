
# load this script using source()

packages = c("DT","tidyverse","scales","openxlsx",
"downloadthis","knitr","SmartEDA")

lapply(packages,library,character.only=T)

#total for bottom row
sum_rows = function(x) {
  x = as.data.frame(x)
  sums = sapply(x,function(col) if (is.numeric(col)) sum(col, na.rm = T) else NA)
  sums = as.data.frame(t(sums))
  names(sums) = names(x)
  rbind(x, sums)
}

# right column for total
sum_cols = function(x) {
  x$Total = rowSums(x[sapply(x, is.numeric)], na.rm = T)
  x
}

#dollar format function; copy/paste up top for easy reference
dollars = function(x) {
  paste0("$",format(x,big.mark= ",",scientific=F))
}

# modified 13feb2025
# created 8-10-2024 by AHL