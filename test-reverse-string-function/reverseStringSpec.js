describe('reverseString', () => {
  // your tests, here
  it("will reverse any word", () => {
    expect(reverseString("supercalilisticexpyaladocious")).toEqual("suoicodalaypxecitsililacrepus");
  });
  it("will reverse any combination of letters", () => {
    expect(reverseString("abcd")).toEqual("dcba");
  });
  it("will accept blank spaces", () => {
    expect(reverseString(" ")).toEqual(" ");
  });
  it("will accept numbers in a string", () => {
    expect(reverseString("12345")).toEqual("54321");
  });
});
