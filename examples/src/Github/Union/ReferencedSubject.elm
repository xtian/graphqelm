module Github.Union.ReferencedSubject exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.ReferencedSubject) -> SelectionSet constructor Github.Union.ReferencedSubject
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onIssue : SelectionSet selection Github.Object.Issue -> FragmentSelectionSet selection Github.Union.ReferencedSubject
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onPullRequest : SelectionSet selection Github.Object.PullRequest -> FragmentSelectionSet selection Github.Union.ReferencedSubject
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder
