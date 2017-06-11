import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
    Html.beginnerProgram
    { model  = model
    , view   = view
    , update = update
    }

-- Model

type alias Model = String

model : Model
model =
    "Herro, friend!"

-- Update

type Msg
  = BadMood
  | GoodMood

update : Msg -> Model -> Model
update msg model =
    case msg of
        BadMood ->
            model ++ " Not feelin' too well."

        GoodMood ->
            model ++ " Feelin' pretty feckin' good."

-- View

view : Model -> Html Msg
view model =
    div []
    [ button [ onClick BadMood ] [ text "Feeling Bad?" ]
    , div [] [ text (toString model) ]
    , button [ onClick GoodMood ] [ text "Feeling Good?" ]
    ]

