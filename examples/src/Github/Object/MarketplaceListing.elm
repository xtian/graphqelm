-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.2
-- Target elm package version 6.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.MarketplaceListing exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.MarketplaceListing
selection constructor =
    Object.selection constructor


{-| URL to the listing owner's company site.
-}
companyUrl : FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
companyUrl =
    Object.fieldDecoder "companyUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| The HTTP path for configuring access to the listing's integration or OAuth app
-}
configurationResourcePath : FieldDecoder Github.Scalar.Uri Github.Object.MarketplaceListing
configurationResourcePath =
    Object.fieldDecoder "configurationResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for configuring access to the listing's integration or OAuth app
-}
configurationUrl : FieldDecoder Github.Scalar.Uri Github.Object.MarketplaceListing
configurationUrl =
    Object.fieldDecoder "configurationUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| URL to the listing's documentation.
-}
documentationUrl : FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
documentationUrl =
    Object.fieldDecoder "documentationUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| The listing's detailed description.
-}
extendedDescription : FieldDecoder (Maybe String) Github.Object.MarketplaceListing
extendedDescription =
    Object.fieldDecoder "extendedDescription" [] (Decode.string |> Decode.maybe)


{-| The listing's detailed description rendered to HTML.
-}
extendedDescriptionHTML : FieldDecoder Github.Scalar.Html Github.Object.MarketplaceListing
extendedDescriptionHTML =
    Object.fieldDecoder "extendedDescriptionHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


{-| The listing's introductory description.
-}
fullDescription : FieldDecoder String Github.Object.MarketplaceListing
fullDescription =
    Object.fieldDecoder "fullDescription" [] Decode.string


{-| The listing's introductory description rendered to HTML.
-}
fullDescriptionHTML : FieldDecoder Github.Scalar.Html Github.Object.MarketplaceListing
fullDescriptionHTML =
    Object.fieldDecoder "fullDescriptionHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


{-| Whether this listing has been submitted for review from GitHub for approval to be displayed in the Marketplace.
-}
hasApprovalBeenRequested : FieldDecoder Bool Github.Object.MarketplaceListing
hasApprovalBeenRequested =
    Object.fieldDecoder "hasApprovalBeenRequested" [] Decode.bool


{-| Does this listing have any plans with a free trial?
-}
hasPublishedFreeTrialPlans : FieldDecoder Bool Github.Object.MarketplaceListing
hasPublishedFreeTrialPlans =
    Object.fieldDecoder "hasPublishedFreeTrialPlans" [] Decode.bool


{-| Does this listing have a terms of service link?
-}
hasTermsOfService : FieldDecoder Bool Github.Object.MarketplaceListing
hasTermsOfService =
    Object.fieldDecoder "hasTermsOfService" [] Decode.bool


{-| A technical description of how this app works with GitHub.
-}
howItWorks : FieldDecoder (Maybe String) Github.Object.MarketplaceListing
howItWorks =
    Object.fieldDecoder "howItWorks" [] (Decode.string |> Decode.maybe)


{-| The listing's technical description rendered to HTML.
-}
howItWorksHTML : FieldDecoder Github.Scalar.Html Github.Object.MarketplaceListing
howItWorksHTML =
    Object.fieldDecoder "howItWorksHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


id : FieldDecoder Github.Scalar.Id Github.Object.MarketplaceListing
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| URL to install the product to the viewer's account or organization.
-}
installationUrl : FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
installationUrl =
    Object.fieldDecoder "installationUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| Whether this listing's app has been installed for the current viewer
-}
installedForViewer : FieldDecoder Bool Github.Object.MarketplaceListing
installedForViewer =
    Object.fieldDecoder "installedForViewer" [] Decode.bool


{-| Whether this listing has been approved for display in the Marketplace.
-}
isApproved : FieldDecoder Bool Github.Object.MarketplaceListing
isApproved =
    Object.fieldDecoder "isApproved" [] Decode.bool


{-| Whether this listing has been removed from the Marketplace.
-}
isDelisted : FieldDecoder Bool Github.Object.MarketplaceListing
isDelisted =
    Object.fieldDecoder "isDelisted" [] Decode.bool


{-| Whether this listing is still an editable draft that has not been submitted for review and is not publicly visible in the Marketplace.
-}
isDraft : FieldDecoder Bool Github.Object.MarketplaceListing
isDraft =
    Object.fieldDecoder "isDraft" [] Decode.bool


{-| Whether the product this listing represents is available as part of a paid plan.
-}
isPaid : FieldDecoder Bool Github.Object.MarketplaceListing
isPaid =
    Object.fieldDecoder "isPaid" [] Decode.bool


{-| Whether this listing has been rejected by GitHub for display in the Marketplace.
-}
isRejected : FieldDecoder Bool Github.Object.MarketplaceListing
isRejected =
    Object.fieldDecoder "isRejected" [] Decode.bool


{-| The hex color code, without the leading '#', for the logo background.
-}
logoBackgroundColor : FieldDecoder String Github.Object.MarketplaceListing
logoBackgroundColor =
    Object.fieldDecoder "logoBackgroundColor" [] Decode.string


{-| URL for the listing's logo image.

  - size - The size in pixels of the resulting square image.

-}
logoUrl : ({ size : OptionalArgument Int } -> { size : OptionalArgument Int }) -> FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
logoUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.fieldDecoder "logoUrl" optionalArgs (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| The listing's full name.
-}
name : FieldDecoder String Github.Object.MarketplaceListing
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The listing's very short description without a trailing period or ampersands.
-}
normalizedShortDescription : FieldDecoder String Github.Object.MarketplaceListing
normalizedShortDescription =
    Object.fieldDecoder "normalizedShortDescription" [] Decode.string


{-| URL to the listing's detailed pricing.
-}
pricingUrl : FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
pricingUrl =
    Object.fieldDecoder "pricingUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| The category that best describes the listing.
-}
primaryCategory : SelectionSet selection Github.Object.MarketplaceCategory -> FieldDecoder selection Github.Object.MarketplaceListing
primaryCategory object =
    Object.selectionFieldDecoder "primaryCategory" [] object identity


{-| URL to the listing's privacy policy.
-}
privacyPolicyUrl : FieldDecoder Github.Scalar.Uri Github.Object.MarketplaceListing
privacyPolicyUrl =
    Object.fieldDecoder "privacyPolicyUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP path for the Marketplace listing.
-}
resourcePath : FieldDecoder Github.Scalar.Uri Github.Object.MarketplaceListing
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The URLs for the listing's screenshots.
-}
screenshotUrls : FieldDecoder (List (Maybe String)) Github.Object.MarketplaceListing
screenshotUrls =
    Object.fieldDecoder "screenshotUrls" [] (Decode.string |> Decode.maybe |> Decode.list)


{-| An alternate category that describes the listing.
-}
secondaryCategory : SelectionSet selection Github.Object.MarketplaceCategory -> FieldDecoder (Maybe selection) Github.Object.MarketplaceListing
secondaryCategory object =
    Object.selectionFieldDecoder "secondaryCategory" [] object (identity >> Decode.maybe)


{-| The listing's very short description.
-}
shortDescription : FieldDecoder String Github.Object.MarketplaceListing
shortDescription =
    Object.fieldDecoder "shortDescription" [] Decode.string


{-| The short name of the listing used in its URL.
-}
slug : FieldDecoder String Github.Object.MarketplaceListing
slug =
    Object.fieldDecoder "slug" [] Decode.string


{-| URL to the listing's status page.
-}
statusUrl : FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
statusUrl =
    Object.fieldDecoder "statusUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| An email address for support for this listing's app.
-}
supportEmail : FieldDecoder (Maybe String) Github.Object.MarketplaceListing
supportEmail =
    Object.fieldDecoder "supportEmail" [] (Decode.string |> Decode.maybe)


{-| Either a URL or an email address for support for this listing's app.
-}
supportUrl : FieldDecoder Github.Scalar.Uri Github.Object.MarketplaceListing
supportUrl =
    Object.fieldDecoder "supportUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| URL to the listing's terms of service.
-}
termsOfServiceUrl : FieldDecoder (Maybe Github.Scalar.Uri) Github.Object.MarketplaceListing
termsOfServiceUrl =
    Object.fieldDecoder "termsOfServiceUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri |> Decode.maybe)


{-| The HTTP URL for the Marketplace listing.
-}
url : FieldDecoder Github.Scalar.Uri Github.Object.MarketplaceListing
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Can the current viewer add plans for this Marketplace listing.
-}
viewerCanAddPlans : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanAddPlans =
    Object.fieldDecoder "viewerCanAddPlans" [] Decode.bool


{-| Can the current viewer approve this Marketplace listing.
-}
viewerCanApprove : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanApprove =
    Object.fieldDecoder "viewerCanApprove" [] Decode.bool


{-| Can the current viewer delist this Marketplace listing.
-}
viewerCanDelist : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanDelist =
    Object.fieldDecoder "viewerCanDelist" [] Decode.bool


{-| Can the current viewer edit this Marketplace listing.
-}
viewerCanEdit : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanEdit =
    Object.fieldDecoder "viewerCanEdit" [] Decode.bool


{-| Can the current viewer edit the primary and secondary category of this
Marketplace listing.
-}
viewerCanEditCategories : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanEditCategories =
    Object.fieldDecoder "viewerCanEditCategories" [] Decode.bool


{-| Can the current viewer edit the plans for this Marketplace listing.
-}
viewerCanEditPlans : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanEditPlans =
    Object.fieldDecoder "viewerCanEditPlans" [] Decode.bool


{-| Can the current viewer return this Marketplace listing to draft state
so it becomes editable again.
-}
viewerCanRedraft : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanRedraft =
    Object.fieldDecoder "viewerCanRedraft" [] Decode.bool


{-| Can the current viewer reject this Marketplace listing by returning it to
an editable draft state or rejecting it entirely.
-}
viewerCanReject : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanReject =
    Object.fieldDecoder "viewerCanReject" [] Decode.bool


{-| Can the current viewer request this listing be reviewed for display in
the Marketplace.
-}
viewerCanRequestApproval : FieldDecoder Bool Github.Object.MarketplaceListing
viewerCanRequestApproval =
    Object.fieldDecoder "viewerCanRequestApproval" [] Decode.bool


{-| Indicates whether the current user has an active subscription to this Marketplace listing.
-}
viewerHasPurchased : FieldDecoder Bool Github.Object.MarketplaceListing
viewerHasPurchased =
    Object.fieldDecoder "viewerHasPurchased" [] Decode.bool


{-| Indicates if the current user has purchased a subscription to this Marketplace listing
for all of the organizations the user owns.
-}
viewerHasPurchasedForAllOrganizations : FieldDecoder Bool Github.Object.MarketplaceListing
viewerHasPurchasedForAllOrganizations =
    Object.fieldDecoder "viewerHasPurchasedForAllOrganizations" [] Decode.bool


{-| Does the current viewer role allow them to administer this Marketplace listing.
-}
viewerIsListingAdmin : FieldDecoder Bool Github.Object.MarketplaceListing
viewerIsListingAdmin =
    Object.fieldDecoder "viewerIsListingAdmin" [] Decode.bool
