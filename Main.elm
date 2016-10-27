import Html exposing (..)
import Html.App as App
import Html.Events exposing (onClick)

-- MODEL

type alias Model = Int
model : Model
model =
    0
    
-- UPDATE
    
type Msg = Increment  
    | Decrement     
        
update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1  
        Decrement ->
            model - 1              
     
view model =
    div []
        [ button [ onClick Increment ] [ text "+"]
        , div [] [ text (toString model) ]
        , button [ onClick Decrement ] [text "-"]
        ]    
        
main =
    App.beginnerProgram { model = model, view = view, update = update }