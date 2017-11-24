class Bitmap
attr_accessor :matrix

    def c
      @matrix.each do |x|
        x.map! {|c| c = "O" }
      end
    end

    def i(x, y)
      matrix = Array.new(y) {Array.new(x, "O")}
    end

    def l(x,y,c)
      x -= 1
      y -= 1
      @matrix[x][y] = c
    end

    def s
      @matrix.map! {|x| x.join("")}
      puts @matrix
    end
end
