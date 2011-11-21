import Yesod.Default.Config (fromArgs)
import Yesod.Default.Main   (defaultMain)
import Application          (withTestOnloadError)

main :: IO ()
main = defaultMain fromArgs withTestOnloadError