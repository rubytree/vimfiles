--- !ruby/object:SnippetSet 
package: gri
snips: 
  con: 
    - Contour (con)
    - >2
      # `date`

      # ${1:`niutil -readprop / /users/\\$USER realname`}


      # Read columnar data (x,y,z), convert to a grid, then contour.


      # Data from figure 5 of Koch et al., 1983, J. Climate

      # Appl. Met., volume 22, pages 1487-1503.

      open "http://gri.sourceforge.net/gridoc/examples/example5.dat"

      read columns x y z

      close

      set x size 12

      set x axis 0 12 2

      set y size 10

      set y axis 0 10 2

      set y margin 15

      draw axes

      set color rgb 0 0 .6 # dark blue

      set line width symbol 0.2

      set symbol size 0.2

      draw symbol bullet

      set font size 8

      draw values

      set color black

      set x grid 0 12 0.25

      set y grid 0 10 0.25


      # Uncomment one of the 'convert' lines below, to try

      # various gridding schemes.

      convert columns to grid         # "default"

      #convert columns to grid objective                # As default

      #convert columns to grid objective -1.4 -1.4      # As default

      #convert columns to grid objective -1.4 -1.4 5 1  # As default

      #convert columns to grid objective -1.4 -1.4 5 -1 #  + fill grid

      #convert columns to grid objective -2   -2        # Average

      #convert columns to grid objective  2    2        #

      #convert columns to grid boxcar                   # Ugly

      #convert columns to grid boxcar -2 -2             # Still ugly


      set font size 12

      draw contour 0 40 10 2

      set line width rapidograph 3

      draw contour 0 40 10

      set color black

      draw title "N. Am. wind (Fig5 Koch et al, 1983)"

  icon: 
    - Icon (icon)
    - >2
      # `date`

      # ${1:`niutil -readprop / /users/\\$USER realname`}


      set x size 5

      set y size 5

      set y margin 20

      set x axis 0 1 0.25

      set y axis 0 20 10

      set font size 0

      \\background_color = "hsb 0.6 0.2 1.0"

      \\line_color =       "red"

      \\word_color =       "rgb 0.0 0.1 0.6"


      read columns x y

      0.0  12.5

      0.25 19  

      0.5  12  

      0.75 15  

      1    13  


      draw axes none

      set color \\background_color

      set line width axis rapidograph 6

      draw curve filled to ..ybottom.. y

      set color black

      #draw axes frame


      set color \\line_color

      set line width 10

      draw curve


      set color \\word_color

      set font size 100

      set font to Helvetica

      draw label "Gri" at 0.05 1.3
