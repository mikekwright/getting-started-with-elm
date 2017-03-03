import Html exposing (..)
import Html.Events exposing (onClick) 

type Message = Increment | Decrement 

model = 0

view model = 
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , model |> toString |> text 
        , button [ onClick Increment ] [ text "+" ]
        ]

update msg model =
    case msg of 
        Increment -> 
            model + 1
        Decrement ->
            model - 1

main =
    beginnerProgram
     { model = model
     , view = view 
     , update = update 
     }