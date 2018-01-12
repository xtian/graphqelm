-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.RateLimit exposing (..)

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


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RateLimit
selection constructor =
    Object.selection constructor


{-| The point cost for the current query counting against the rate limit.
-}
cost : FieldDecoder Int Github.Object.RateLimit
cost =
    Object.fieldDecoder "cost" [] Decode.int


{-| The maximum number of points the client is permitted to consume in a 60 minute window.
-}
limit : FieldDecoder Int Github.Object.RateLimit
limit =
    Object.fieldDecoder "limit" [] Decode.int


{-| The maximum number of nodes this query may return
-}
nodeCount : FieldDecoder Int Github.Object.RateLimit
nodeCount =
    Object.fieldDecoder "nodeCount" [] Decode.int


{-| The number of points remaining in the current rate limit window.
-}
remaining : FieldDecoder Int Github.Object.RateLimit
remaining =
    Object.fieldDecoder "remaining" [] Decode.int


{-| The time at which the current rate limit window resets in UTC epoch seconds.
-}
resetAt : FieldDecoder Github.Scalar.DateTime Github.Object.RateLimit
resetAt =
    Object.fieldDecoder "resetAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)
