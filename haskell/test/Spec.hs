import Lib
import Test.Hspec
import Test.Hspec.Runner

main :: IO ()
main = hspecWith defaultConfig {configFastFail = True} specs

specs :: Spec
specs = describe "sum" $ it "sums correctly" $ (1 + 2) `shouldBe` 3