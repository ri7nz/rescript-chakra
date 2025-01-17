open Vitest

// make pipe-first
let toBe = x => Expect.toBe(_, x)
let toEqual = x => Expect.toEqual(_, x)
let pseudo = Chakra.pseudo
external asPseudo: 'a => Chakra__MakeProps.Pseudo.t = "%identity"

describe("Test MakeProps", () => {
  let testCasesColors = list{
    (#black, "black"),
    (#white, "white"),
    (#gray, "gray"),
    (#gray50, "gray.50"),
    (#gray100, "gray.100"),
    (#gray200, "gray.200"),
    (#gray300, "gray.300"),
    (#gray400, "gray.400"),
    (#gray500, "gray.500"),
    (#gray600, "gray.600"),
    (#gray700, "gray.700"),
    (#gray800, "gray.800"),
    (#gray900, "gray.900"),
    (#red, "red"),
    (#red50, "red.50"),
    (#red100, "red.100"),
    (#red200, "red.200"),
    (#red300, "red.300"),
    (#red400, "red.400"),
    (#red500, "red.500"),
    (#red600, "red.600"),
    (#red700, "red.700"),
    (#red800, "red.800"),
    (#red900, "red.900"),
    (#orange, "orange"),
    (#orange50, "orange.50"),
    (#orange100, "orange.100"),
    (#orange200, "orange.200"),
    (#orange300, "orange.300"),
    (#orange400, "orange.400"),
    (#orange500, "orange.500"),
    (#orange600, "orange.600"),
    (#orange700, "orange.700"),
    (#orange800, "orange.800"),
    (#orange900, "orange.900"),
    (#yellow, "yellow"),
    (#yellow50, "yellow50"),
    (#yellow100, "yellow.100"),
    (#yellow200, "yellow.200"),
    (#yellow300, "yellow.300"),
    (#yellow400, "yellow.400"),
    (#yellow500, "yellow.500"),
    (#yellow600, "yellow.600"),
    (#yellow700, "yellow.700"),
    (#yellow800, "yellow.800"),
    (#yellow900, "yellow.900"),
    (#green, "green"),
    (#green50, "green.50"),
    (#green100, "green.100"),
    (#green200, "green.200"),
    (#green300, "green.300"),
    (#green400, "green.400"),
    (#green500, "green.500"),
    (#green600, "green.600"),
    (#green700, "green.700"),
    (#green800, "green.800"),
    (#green900, "green.900"),
    (#teal, "teal"),
    (#teal50, "teal.50"),
    (#teal100, "teal.100"),
    (#teal200, "teal.200"),
    (#teal300, "teal.300"),
    (#teal400, "teal.400"),
    (#teal500, "teal.500"),
    (#teal600, "teal.600"),
    (#teal700, "teal.700"),
    (#teal800, "teal.800"),
    (#teal900, "teal.900"),
    (#blue, "blue"),
    (#blue50, "blue.50"),
    (#blue100, "blue.100"),
    (#blue200, "blue.200"),
    (#blue300, "blue.300"),
    (#blue400, "blue.400"),
    (#blue500, "blue.500"),
    (#blue600, "blue.600"),
    (#blue700, "blue.700"),
    (#blue800, "blue.800"),
    (#blue900, "blue.900"),
    (#cyan, "cyan"),
    (#cyan50, "cyan.50"),
    (#cyan100, "cyan.100"),
    (#cyan200, "cyan.200"),
    (#cyan300, "cyan.300"),
    (#cyan400, "cyan.400"),
    (#cyan500, "cyan.500"),
    (#cyan600, "cyan.600"),
    (#cyan700, "cyan.700"),
    (#cyan800, "cyan.800"),
    (#cyan900, "cyan.900"),
    (#purple, "purple"),
    (#purple50, "purple.50"),
    (#purple100, "purple.100"),
    (#purple200, "purple.200"),
    (#purple300, "purple.300"),
    (#purple400, "purple.400"),
    (#purple500, "purple.500"),
    (#purple600, "purple.600"),
    (#purple700, "purple.700"),
    (#purple800, "purple.800"),
    (#purple900, "purple.900"),
    (#pink, "pink"),
    (#pink50, "pink.50"),
    (#pink100, "pink.100"),
    (#pink200, "pink.200"),
    (#pink300, "pink.300"),
    (#pink400, "pink.400"),
    (#pink500, "pink.500"),
    (#pink600, "pink.600"),
    (#pink700, "pink.700"),
    (#pink800, "pink.800"),
    (#pink900, "pink.900"),
  }

  let testCasesPseudo = list{(pseudo(~color=#teal900, ()), {"color": "teal.900"})}

  testCasesColors
  ->Belt.List.toArray
  ->Each.test2("Chakra UI Theme Color Variant", (case, expected) => {
    open Chakra__MakeProps
    let result = Color.identity(case)
    let expected = expected->Identity.fromString
    result->expect->Expect.toBe(expected)
  })
  testCasesPseudo
  ->Belt.List.toArray
  ->Each.test2("Pseudo Creation", (case, expected) => {
    let expected = expected->asPseudo
    case->expect->Expect.toEqual(expected)
  })
})
