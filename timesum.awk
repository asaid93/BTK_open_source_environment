BEGIN {
  FS = ":"
  RS = " "
  sum = 0
  sign = "+"
}

/[+-]/ {
  sign = $0
}

/[[:digit:]]+/ {
  b = (sign == "+") ? 1 : -1
  for (i=NF; i>0; --i) {
    sum += $i * b
    b *= 60
  }
}

END {
  if (sum < 0) {
    sum = -sum
    printf "-"
  }
  printf "%d:%02d:%06.3f\n", sum/3600, sum%3600/60, sum%60
}
