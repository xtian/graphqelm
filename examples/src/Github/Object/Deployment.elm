-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.Deployment exposing (..)

import Github.Enum.DeploymentState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Deployment
selection constructor =
    Object.selection constructor


{-| Identifies the commit sha of the deployment.
-}
commit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.Deployment
commit object =
    Object.selectionFieldDecoder "commit" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder Github.Scalar.DateTime Github.Object.Deployment
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


{-| Identifies the actor who triggered the deployment.
-}
creator : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.Deployment
creator object =
    Object.selectionFieldDecoder "creator" [] object (identity >> Decode.maybe)


{-| The environment to which this deployment was made.
-}
environment : FieldDecoder (Maybe String) Github.Object.Deployment
environment =
    Object.fieldDecoder "environment" [] (Decode.string |> Decode.maybe)


id : FieldDecoder Github.Scalar.Id Github.Object.Deployment
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The latest status of this deployment.
-}
latestStatus : SelectionSet selection Github.Object.DeploymentStatus -> FieldDecoder (Maybe selection) Github.Object.Deployment
latestStatus object =
    Object.selectionFieldDecoder "latestStatus" [] object (identity >> Decode.maybe)


{-| Extra information that a deployment system might need.
-}
payload : FieldDecoder (Maybe String) Github.Object.Deployment
payload =
    Object.fieldDecoder "payload" [] (Decode.string |> Decode.maybe)


{-| Identifies the repository associated with the deployment.
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.Deployment
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| The current state of the deployment.
-}
state : FieldDecoder (Maybe Github.Enum.DeploymentState.DeploymentState) Github.Object.Deployment
state =
    Object.fieldDecoder "state" [] (Github.Enum.DeploymentState.decoder |> Decode.maybe)


{-| A list of statuses associated with the deployment.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
statuses : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.DeploymentStatusConnection -> FieldDecoder (Maybe selection) Github.Object.Deployment
statuses fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "statuses" optionalArgs object (identity >> Decode.maybe)
