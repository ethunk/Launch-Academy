describe('Square', () =>  {
  describe('new Square()', () =>  {
    it('takes argument for a length of a side', () =>  {
      let square = new Square (5);
      expect(square).toBeDefined();
      expect(square.length).toEqual(5);
    });

    it('takes optional argument for the center point', () =>  {
      let square = new Square(5, 1, 2);
      expect(square).toBeDefined();
      expect(square.x).toEqual(1);
      expect(square.y).toEqual(2);
    });

    it('defaults (x,y) to (0,0) if not provided', () =>  {
      let square = new Square(5);
      expect(square).toBeDefined();
      expect(square.x).toEqual(0);
      expect(square.y).toEqual(0);
    });
  });

  describe('area()', () =>  {
    it('returns the area of the circle', () =>  {
      let square = new Square(5);
      expect(Math.round(square.area)).toEqual(25);
    });
  });

  describe('perimeter()', () =>  {
    it('returns the perimeter of the circle', () =>  {

    });
  });

  describe('contains_point?(x,y)', () =>  {
    it('returns true for a point given inside of the square\'s perimeter', () => {
      let square = new Square(2);
      expect(square.contains_point(1,1)).toBe(true);
    });

    it('returns false for a point given outside of the square\'s perimeter', () => {
      let square = new Square (4);
      expect(square.contains_point(100,100)).toBe(false);
    });
  });
});
