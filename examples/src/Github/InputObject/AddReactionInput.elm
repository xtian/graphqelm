-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.AddReactionInput exposing (..)

import Github.Enum.ReactionContent
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


{-| Encode a AddReactionInput into a value that can be used as an argument.
-}
encode : AddReactionInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "subjectId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.subjectId |> Just ), ( "content", Encode.enum Github.Enum.ReactionContent.toString input.content |> Just ) ]


{-| Type for the AddReactionInput input object.
-}
type alias AddReactionInput =
    { clientMutationId : OptionalArgument String, subjectId : Github.Scalar.Id, content : Github.Enum.ReactionContent.ReactionContent }
