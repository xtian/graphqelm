module Graphqelm.Field exposing (..)

import Graphqelm.Argument as Argument exposing (Argument)
import Json.Decode as Decode exposing (Decoder)


type FieldDecoder decodesTo typeLock
    = FieldDecoder Field (Decoder decodesTo)


type Field
    = Composite String (List Argument) (List Field)
    | Leaf String (List Argument)
    | QueryField Field


fieldDecoderToQuery : Field -> String
fieldDecoderToQuery field =
    case field of
        Composite fieldName args children ->
            (fieldName
                ++ Argument.toQueryString args
                ++ " {\n"
                ++ (children
                        |> List.map fieldDecoderToQuery
                        |> String.join "\n"
                   )
            )
                ++ "\n}"

        Leaf fieldName args ->
            fieldName

        QueryField nestedField ->
            fieldDecoderToQuery nestedField


fieldDecoder : String -> List Argument -> Decoder decodesTo -> FieldDecoder decodesTo lockedTo
fieldDecoder fieldName args decoder =
    FieldDecoder (Leaf fieldName args)
        (decoder |> Decode.field fieldName)


map : (decodesTo -> mapsTo) -> FieldDecoder decodesTo typeLock -> FieldDecoder mapsTo typeLock
map mapFunction (FieldDecoder field decoder) =
    FieldDecoder field (Decode.map mapFunction decoder)
