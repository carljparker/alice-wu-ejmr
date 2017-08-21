# 
# Carl Parker
# Carl.Parker@hbo.com
# 206.388.6677
#
# StatR 503: Advanced R Programming And Graphics
# 
# Homework <homework number>
# 

#
# Template for this file is located at:
#
#   ~/git/gtdev/R-language/template-prog.R
#

#
# Add an initial @knitr section
#

## @knitr Prolog 

#
# Need to set directory for this @knitr section to do the `source()`
# below.
#
setwd( "/Users/cparker/git/github/carljparker/alice-wu-ejmr" )
getwd()


#
# --- Sourced Files ---
#
source( "code/preamble.R" )


#
# --- Library Dependencies ---
#


#
# --- Function Definitions ---
#


#
# If I run this in RStudio or in vimR, interactive()
# will return TRUE.
#
# If I run this with my "rr" shell function, interactive() 
# will return FALSE.
#
if ( interactive() ) {

 #
 # Set the working directory. Only need to do this for RStudio or RMarkdown.
 #
 # For RMarkdown, need to do this for each chunk.
 #
 setwd( "/Users/cparker/git/github/carljparker/alice-wu-ejmr" )
 getwd()

}  # if interactive


#
# Set repeatable random seed using my zip code.
#
set.seed(98122)


#
# Initialize logging functionality
#
logger.init()


## @knitr q1a 
#
# Set working directory for this knitr chunk
#
setwd( "/Users/cparker/git/github/carljparker/alice-wu-ejmr" )


#
# --- Get the data ---
#
logdebug( "Read data from CSV." )


#
# Update the following line with the name of the CSV file to read.
#
csv.data.file.ch <- "data/words-predict.csv"
csv.data.df <- read.csv( 
                         csv.data.file.ch, 
                         header = TRUE, 
                         quote="\"",
                         sep = ",", 
                         na.strings = c( "NA", "-" ),
                         allowEscapes = TRUE,
                         strip.white  = TRUE,
                         stringsAsFactors = TRUE,
                         comment.char="#" 
                       )

#
# --- Explore the data ---
#

#
# The following line is a nice way to set off 
# data exploration code inside a production
# context.
#

# -*- -*- -*- #

dex.dataframe( csv.data.df )

csv.data.df$marginal.effect <- as.numeric( as.character( csv.data.df$marginal.effect ) )
plot( abs( csv.data.df[ csv.data.df$gender == "male", ]$marginal.effect ), col = "blue", ylim = c( 0.15, 0.4 ) )
points( abs( csv.data.df[ csv.data.df$gender == "female", ]$marginal.effect ), col = "red" )

# -*- -*- -*- #


## @knitr q1b 
#
# Set working directory for this knitr chunk
#
setwd( "/Users/cparker/git/github/carljparker/alice-wu-ejmr" )

logdebug( "Program complete." )


# --- END ---

