{-# LANGUAGE TemplateHaskell, QuasiQuotes, OverloadedStrings #-}
module Handler.Root where

import Foundation

-- This is a handler function for the GET request method on the RootR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.
--

getRootR :: Handler RepHtml
getRootR = do
    defaultLayout $ do
        h2id <- lift newIdent
        setTitle "testOnloadError homepage"
        toWidgetHead [julius|
function load()
{
alert("Page is loaded");
}|]
{-
 - This commened out section  does not function correctly.
 - The code below it seems like a good replacement for now.
 - The replacemtn does does change the order of evens on the webpage though.
        [whamlet|
<body onload="load()">
    <p> Hello World!|]
-}
        [whamlet|<p> Hello World!|]
        toWidget [julius|load()|]
