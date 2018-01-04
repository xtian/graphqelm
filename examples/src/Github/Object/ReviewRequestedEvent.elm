module Github.Object.ReviewRequestedEvent exposing (..)

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


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewRequestedEvent
selection constructor =
    Object.object constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet actor Github.Interface.Actor -> FieldDecoder (Maybe actor) Github.Object.ReviewRequestedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.ReviewRequestedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.ReviewRequestedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet pullRequest Github.Object.PullRequest -> FieldDecoder pullRequest Github.Object.ReviewRequestedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| Identifies the reviewer whose review was requested.
-}
requestedReviewer : SelectionSet requestedReviewer Github.Union.RequestedReviewer -> FieldDecoder (Maybe requestedReviewer) Github.Object.ReviewRequestedEvent
requestedReviewer object =
    Object.selectionFieldDecoder "requestedReviewer" [] object (identity >> Decode.maybe)


{-| Identifies the user whose review was requested.
-}
subject : SelectionSet subject Github.Object.User -> FieldDecoder (Maybe subject) Github.Object.ReviewRequestedEvent
subject object =
    Object.selectionFieldDecoder "subject" [] object (identity >> Decode.maybe)
