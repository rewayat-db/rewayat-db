import Test.Hspec
import Test.Hspec.Runner
import Lib

main :: IO ()
main = hspecWith defaultConfig {configFastFail = True} specs

specs :: Spec
specs =
  describe "greet" $
    it "greets somebody" $
      greet "somebody"
      `shouldBe` "Hello, somebody"
