import Html exposing (text)
import Tuple

main =
  recordUsage
  --divideBy5 125
  --  |> text

  --funWithLists
  --  |> text

  -- funWithTuples |> text

  -- tupleExtraction

printMessage =
  "Hello, World!"

divideNumber: Float -> Float -> String
divideNumber divisor dividend =
  dividend / divisor
    |> toString

divideBy5: Float -> String
divideBy5 =
  divideNumber 5

isEven: Int -> Bool
isEven n =
  if rem n 2 == 0 then
    True
  else
    False

funWithLists: String
funWithLists =
  let
    myList = [1, 2, 3]
  in
    myList
      |> toString

funWithTuples: String
funWithTuples =
  let
    myTuple = ("First", 2)
  in
    myTuple
      |> toString

tupleExtraction: Html.Html msg
tupleExtraction =
  let
    result = (True, "Some message")
  in
    text <|
      if (Tuple.first result) then
        (Tuple.second result)
      else
        "Error"

recordUsage: Html.Html msg
recordUsage =
  let
    point1 = { x = 1, y = 2 }
    point2 = { x = 10, y = 20 }
  in
    distanceBetweenTwoPoints point1 point2
      |> toString
      |> text

distanceBetweenTwoPoints: {x:Float, y:Float} -> {x:Float, y:Float} -> Float
distanceBetweenTwoPoints a b =
  ((a.x - b.x) ^ 2 + (a.y - b.y) ^ 2) ^ 0.5

type alias Point =
  { x: Float
  , y: Float
  }

distanceUsingAlias: Point -> Point -> Float
distanceUsingAlias =
  distanceBetweenTwoPoints
