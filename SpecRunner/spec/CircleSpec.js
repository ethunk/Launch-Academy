describe('Circle', () => {
  // ...

  describe('#area', () => {
    it('returns 314.16 when the radius is 10', () => {
      circle = new Circle(10)
      expect(circle.area()).toBeCloseTo(314.16)
    })

    it('returns 12.57 when the radius is 2', () => {
      circle = new Circle(2)
      expect(circle.area()).toBeCloseTo(12.57)
    })

    it('returns 0.785 when the radius is 0.5', () => {
      circle = new Circle(0.5)
      expect(circle.area()).toBeCloseTo(0.785)
    })
  })
})
