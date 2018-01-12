-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.Commit exposing (..)

import Github.Enum.SubscriptionState
import Github.InputObject.CommitAuthor
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Commit
selection constructor =
    Object.selection constructor


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : FieldDecoder String Github.Object.Commit
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The number of additions in this commit.
-}
additions : FieldDecoder Int Github.Object.Commit
additions =
    Object.fieldDecoder "additions" [] Decode.int


{-| Authorship details of the commit.
-}
author : SelectionSet selection Github.Object.GitActor -> FieldDecoder (Maybe selection) Github.Object.Commit
author object =
    Object.selectionFieldDecoder "author" [] object (identity >> Decode.maybe)


{-| Check if the committer and the author match.
-}
authoredByCommitter : FieldDecoder Bool Github.Object.Commit
authoredByCommitter =
    Object.fieldDecoder "authoredByCommitter" [] Decode.bool


{-| The datetime when this commit was authored.
-}
authoredDate : FieldDecoder Github.Scalar.DateTime Github.Object.Commit
authoredDate =
    Object.fieldDecoder "authoredDate" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


{-| Fetches `git blame` information.

  - path - The file whose Git blame information you want.

-}
blame : { path : String } -> SelectionSet selection Github.Object.Blame -> FieldDecoder selection Github.Object.Commit
blame requiredArgs object =
    Object.selectionFieldDecoder "blame" [ Argument.required "path" requiredArgs.path Encode.string ] object identity


{-| The number of changed files in this commit.
-}
changedFiles : FieldDecoder Int Github.Object.Commit
changedFiles =
    Object.fieldDecoder "changedFiles" [] Decode.int


{-| Comments made on the commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.CommitCommentConnection -> FieldDecoder selection Github.Object.Commit
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "comments" optionalArgs object identity


{-| The HTTP path for this Git object
-}
commitResourcePath : FieldDecoder Github.Scalar.Uri Github.Object.Commit
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : FieldDecoder Github.Scalar.Uri Github.Object.Commit
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The datetime when this commit was committed.
-}
committedDate : FieldDecoder Github.Scalar.DateTime Github.Object.Commit
committedDate =
    Object.fieldDecoder "committedDate" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


{-| Check if commited via GitHub web UI.
-}
committedViaWeb : FieldDecoder Bool Github.Object.Commit
committedViaWeb =
    Object.fieldDecoder "committedViaWeb" [] Decode.bool


{-| Committership details of the commit.
-}
committer : SelectionSet selection Github.Object.GitActor -> FieldDecoder (Maybe selection) Github.Object.Commit
committer object =
    Object.selectionFieldDecoder "committer" [] object (identity >> Decode.maybe)


{-| The number of deletions in this commit.
-}
deletions : FieldDecoder Int Github.Object.Commit
deletions =
    Object.fieldDecoder "deletions" [] Decode.int


{-| The linear commit history starting from (and including) this commit, in the same order as `git log`.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - path - If non-null, filters history to only show commits touching files under this path.
  - author - If non-null, filters history to only show commits with matching authorship.
  - since - Allows specifying a beginning time or date for fetching commits.
  - until - Allows specifying an ending time or date for fetching commits.

-}
history : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, path : OptionalArgument String, author : OptionalArgument Github.InputObject.CommitAuthor.CommitAuthor, since : OptionalArgument Github.Scalar.GitTimestamp, until : OptionalArgument Github.Scalar.GitTimestamp } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, path : OptionalArgument String, author : OptionalArgument Github.InputObject.CommitAuthor.CommitAuthor, since : OptionalArgument Github.Scalar.GitTimestamp, until : OptionalArgument Github.Scalar.GitTimestamp }) -> SelectionSet selection Github.Object.CommitHistoryConnection -> FieldDecoder selection Github.Object.Commit
history fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, path = Absent, author = Absent, since = Absent, until = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "path" filledInOptionals.path Encode.string, Argument.optional "author" filledInOptionals.author Github.InputObject.CommitAuthor.encode, Argument.optional "since" filledInOptionals.since (\(Github.Scalar.GitTimestamp raw) -> Encode.string raw), Argument.optional "until" filledInOptionals.until (\(Github.Scalar.GitTimestamp raw) -> Encode.string raw) ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "history" optionalArgs object identity


id : FieldDecoder Github.Scalar.Id Github.Object.Commit
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The Git commit message
-}
message : FieldDecoder String Github.Object.Commit
message =
    Object.fieldDecoder "message" [] Decode.string


{-| The Git commit message body
-}
messageBody : FieldDecoder String Github.Object.Commit
messageBody =
    Object.fieldDecoder "messageBody" [] Decode.string


{-| The commit message body rendered to HTML.
-}
messageBodyHTML : FieldDecoder Github.Scalar.Html Github.Object.Commit
messageBodyHTML =
    Object.fieldDecoder "messageBodyHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


{-| The Git commit message headline
-}
messageHeadline : FieldDecoder String Github.Object.Commit
messageHeadline =
    Object.fieldDecoder "messageHeadline" [] Decode.string


{-| The commit message headline rendered to HTML.
-}
messageHeadlineHTML : FieldDecoder Github.Scalar.Html Github.Object.Commit
messageHeadlineHTML =
    Object.fieldDecoder "messageHeadlineHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


{-| The Git object ID
-}
oid : FieldDecoder Github.Scalar.GitObjectID Github.Object.Commit
oid =
    Object.fieldDecoder "oid" [] (Decode.string |> Decode.map Github.Scalar.GitObjectID)


{-| The parents of a commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
parents : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.CommitConnection -> FieldDecoder selection Github.Object.Commit
parents fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "parents" optionalArgs object identity


{-| The datetime when this commit was pushed.
-}
pushedDate : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.Commit
pushedDate =
    Object.fieldDecoder "pushedDate" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| The Repository this commit belongs to
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.Commit
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| The HTTP path for this commit
-}
resourcePath : FieldDecoder Github.Scalar.Uri Github.Object.Commit
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Commit signing information, if present.
-}
signature : SelectionSet selection Github.Interface.GitSignature -> FieldDecoder (Maybe selection) Github.Object.Commit
signature object =
    Object.selectionFieldDecoder "signature" [] object (identity >> Decode.maybe)


{-| Status information for this commit
-}
status : SelectionSet selection Github.Object.Status -> FieldDecoder (Maybe selection) Github.Object.Commit
status object =
    Object.selectionFieldDecoder "status" [] object (identity >> Decode.maybe)


{-| Returns a URL to download a tarball archive for a repository. Note: For private repositories, these links are temporary and expire after five minutes.
-}
tarballUrl : FieldDecoder Github.Scalar.Uri Github.Object.Commit
tarballUrl =
    Object.fieldDecoder "tarballUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Commit's root Tree
-}
tree : SelectionSet selection Github.Object.Tree -> FieldDecoder selection Github.Object.Commit
tree object =
    Object.selectionFieldDecoder "tree" [] object identity


{-| The HTTP path for the tree of this commit
-}
treeResourcePath : FieldDecoder Github.Scalar.Uri Github.Object.Commit
treeResourcePath =
    Object.fieldDecoder "treeResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for the tree of this commit
-}
treeUrl : FieldDecoder Github.Scalar.Uri Github.Object.Commit
treeUrl =
    Object.fieldDecoder "treeUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this commit
-}
url : FieldDecoder Github.Scalar.Uri Github.Object.Commit
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : FieldDecoder Bool Github.Object.Commit
viewerCanSubscribe =
    Object.fieldDecoder "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : FieldDecoder Github.Enum.SubscriptionState.SubscriptionState Github.Object.Commit
viewerSubscription =
    Object.fieldDecoder "viewerSubscription" [] Github.Enum.SubscriptionState.decoder


{-| Returns a URL to download a zipball archive for a repository. Note: For private repositories, these links are temporary and expire after five minutes.
-}
zipballUrl : FieldDecoder Github.Scalar.Uri Github.Object.Commit
zipballUrl =
    Object.fieldDecoder "zipballUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)
