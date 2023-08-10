
library(shiny)
library(shinydashboard)
library(readxl)
library(tidyverse)
library(shinythemes)
library(bslib)
library(DT)
library(shinyWidgets)
library(tools)
library(openxlsx)
library(plotly)
library(RColorBrewer)
library(shiny)
library(shinymanager)

## allows larger file upload
options(shiny.maxRequestSize=30*1024^2)


# data.frame with credentials info
credentials <- data.frame(
  user = c("1", "fanny", "victor", "benoit"),
  password = c("1", "azerty", "12345", "azerty"),
  # comment = c("alsace", "auvergne", "bretagne"), %>% 
  stringsAsFactors = FALSE
)

inactivity <- "function idleTimer() {
var t = setTimeout(logout, 900000);
window.onmousemove = resetTimer; // catches mouse movements
window.onmousedown = resetTimer; // catches mouse movements
window.onclick = resetTimer;     // catches mouse clicks
window.onscroll = resetTimer;    // catches scrolling
window.onkeypress = resetTimer;  //catches keyboard actions

function logout() {
window.close();  //close the window
}
// set for 15 min time out
function resetTimer() {
clearTimeout(t);
t = setTimeout(logout, 900000);  // time is in milliseconds (1000 is 1 second)
}
}
idleTimer();"