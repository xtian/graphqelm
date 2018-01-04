module Github.Object.PublicKey exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PublicKey
selection constructor =
    Object.object constructor


id : FieldDecoder String Github.Object.PublicKey
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The public key string
-}
key : FieldDecoder String Github.Object.PublicKey
key =
    Object.fieldDecoder "key" [] Decode.string
