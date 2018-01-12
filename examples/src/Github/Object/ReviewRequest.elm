-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.ReviewRequest exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewRequest
selection constructor =
    Object.selection constructor


id : FieldDecoder Github.Scalar.Id Github.Object.ReviewRequest
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| Identifies the pull request associated with this review request.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.ReviewRequest
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| The reviewer that is requested.
-}
requestedReviewer : SelectionSet selection Github.Union.RequestedReviewer -> FieldDecoder (Maybe selection) Github.Object.ReviewRequest
requestedReviewer object =
    Object.selectionFieldDecoder "requestedReviewer" [] object (identity >> Decode.maybe)
