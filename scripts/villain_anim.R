villain_anim <- function(seconds = 2, msg = "fufufu... corriendo") {
  frames <- c(
"⡤⠲⡄
⠑⢲⠷⢤⣀   fufufu...
⠀⠸⡇⠀⠈⠙⠲⢤⣀
⠀⠀⡇⠀⠀⠀⠀⠀⠈⠙⣲⣀⠄⠤⠤⠤⠤⠤⠤⢴⠋
",
"⡤⠲⡄
⠑⢲⠷⢤⣀   FUfufu...
⠀⠸⡇⠀⠈⠙⠲⢤⣀
⠀⠀⡇⠀⠀⠀⠀⠀⠈⠙⣲⣀⠄⠤⠤⠤⠤⠤⠤⢴⠋
"
  )
  t0 <- Sys.time()
  i <- 1
  while (as.numeric(difftime(Sys.time(), t0, units = "secs")) < seconds) {
    cat("\033[2J\033[H")
    cat(frames[[i]], "\n🖤 ", msg, "\n", sep = "")
    Sys.sleep(0.12)
    i <- if (i == length(frames)) 1 else i + 1
  }
  cat("\033[2J\033[H")
  cat("✅ listo. (la villana aprueba)\n")
}
