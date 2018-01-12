-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.DeleteProjectCardInput exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a DeleteProjectCardInput into a value that can be used as an argument.
-}
encode : DeleteProjectCardInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "cardId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.cardId |> Just ) ]


{-| Type for the DeleteProjectCardInput input object.
-}
type alias DeleteProjectCardInput =
    { clientMutationId : OptionalArgument String, cardId : Github.Scalar.Id }
