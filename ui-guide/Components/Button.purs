module UIGuide.Components.Button where

import Prelude

import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Ocelot.Block.Button as Button
import Ocelot.Block.Type as Type
import UIGuide.Block.Backdrop as Backdrop
import UIGuide.Block.Documentation as Documentation

type State = Unit

data Query a = NoOp a

type Input = Unit

type Message = Void


----------
-- HTML

css :: ∀ p i. String -> H.IProp ( "class" :: String | p ) i
css = HP.class_ <<< HH.ClassName

component :: ∀ m. H.Component HH.HTML Query Input Message m
component =
  H.component
    { initialState: const unit
    , render
    , eval
    , receiver: const Nothing
    }
  where
    eval :: Query ~> H.ComponentDSL State Query Message m
    eval = case _ of
      NoOp a -> pure a

    render :: State -> H.ComponentHTML Query
    render _ =
      HH.div_
      [ Documentation.documentation_
        { header: "Buttons"
        , subheader: "Perform actions."
        }
        [ Backdrop.backdrop_
          [ Backdrop.content_
            [ HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Standard Button" ]
              , Button.button_
                [ HH.text "Cancel" ]
              ]
            , HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Primary Button" ]
              , Button.buttonPrimary_
                [ HH.text "Submit" ]
              ]
            ]
          ]
        , Backdrop.backdropWhite_
          [ Backdrop.content_
            [ HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Standard Button" ]
              , Button.button_
                [ HH.text "Cancel" ]
              ]
            , HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Primary Button" ]
              , Button.buttonPrimary_
                [ HH.text "Submit" ]
              ]
            ]
          ]
        , Backdrop.backdropDark_
          [ Backdrop.content_
            [ HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Standard Button" ]
              , Button.buttonDark_
                [ HH.text "Cancel" ]
              ]
            , HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Primary Button" ]
              , Button.buttonPrimary_
                [ HH.text "Submit" ]
              ]
            ]
          ]
        ]
      , Documentation.documentation_
        { header: "Button Groups"
        , subheader: "Group related actions"
        }
        [ Backdrop.backdrop_
          [ Backdrop.content_
            [ HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Two Buttons" ]
              , Button.buttonGroup_
                [ Button.buttonLeft_
                  [ HH.text "Back" ]
                , Button.buttonRight_
                  [ HH.text "Forward" ]
                ]
              ]
            , HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Three Buttons" ]
              , Button.buttonGroup_
                [ Button.buttonPrimaryLeft_
                  [ HH.text "Rewind" ]
                , Button.buttonPrimaryCenter_
                  [ HH.text "Play" ]
                , Button.buttonPrimaryRight_
                  [ HH.text "Fast-Forward" ]
                ]
              ]
            ]
          ]
        , Backdrop.backdropWhite_
          [ Backdrop.content_
            [ HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Two Buttons" ]
              , Button.buttonGroup_
                [ Button.buttonLeft_
                  [ HH.text "Back" ]
                , Button.buttonRight_
                  [ HH.text "Forward" ]
                ]
              ]
            , HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Three Buttons" ]
              , Button.buttonGroup_
                [ Button.buttonPrimaryLeft_
                  [ HH.text "Rewind" ]
                , Button.buttonPrimaryCenter_
                  [ HH.text "Play" ]
                , Button.buttonPrimaryRight_
                  [ HH.text "Fast-Forward" ]
                ]
              ]
            ]
          ]
        , Backdrop.backdropDark_
          [ Backdrop.content_
            [ HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Two Buttons" ]
              , Button.buttonGroup_
                [ Button.buttonDarkLeft_
                  [ HH.text "Back" ]
                , Button.buttonDarkRight_
                  [ HH.text "Forward" ]
                ]
              ]
            , HH.div
              [ css "mb-6" ]
              [ Type.caption_
                [ HH.text "Three Buttons" ]
              , Button.buttonGroup_
                [ Button.buttonPrimaryLeft_
                  [ HH.text "Rewind" ]
                , Button.buttonPrimaryCenter_
                  [ HH.text "Play" ]
                , Button.buttonPrimaryRight_
                  [ HH.text "Fast-Forward" ]
                ]
              ]
            ]
          ]
        ]
      ]
