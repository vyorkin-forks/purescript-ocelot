module Ocelot.Block.Card where

import Prelude

import DOM.HTML.Indexed (HTMLaside, HTMLh3)
import Halogen.HTML as HH
import Halogen.HTML.Properties as HP
import Ocelot.Core.Utils ((<&>))

cardClasses :: Array HH.ClassName
cardClasses = HH.ClassName <$>
  [ "bg-white"
  , "h-auto"
  , "w-full"
  , "p-6"
  , "shadow"
  , "w-auto"
  , "mb-10"
  ]

headerClasses :: Array HH.ClassName
headerClasses = HH.ClassName <$>
  [ "mb-4"
  , "font-medium"
  , "text-black-20"
  , "text-lg"
  , "flex"
  , "items-center"
  ]

card
  :: ∀ p i
   . Array (HH.IProp HTMLaside i)
  -> Array (HH.HTML p i)
  -> HH.HTML p i
card iprops html =
  HH.aside
    ( [ HP.classes cardClasses ] <&> iprops )
    html

card_
  :: ∀ p i
   . Array (HH.HTML p i)
  -> HH.HTML p i
card_ = card []

header
  :: ∀ p i
   . Array (HH.IProp HTMLh3 i)
  -> Array (HH.HTML p i)
  -> HH.HTML p i
header iprops html =
  HH.header_
    [ HH.h3
      ( [ HP.classes headerClasses ] <&> iprops )
      html
    ]

header_
  :: ∀ p i
   . Array (HH.HTML p i)
  -> HH.HTML p i
header_ = header []
