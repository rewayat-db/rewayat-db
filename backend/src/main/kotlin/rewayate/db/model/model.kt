package rewayate.db.model


data class Rawi(val rawiId:String, val bibliography:String);


data class Imam(val imamId: String)
/**
 * rowatChain: the hadeeth rowat
 */
data class Hadeeth(
        val rowatChain: List<Rawi>,
        val hadeethText: String,
        val scores: List<RiwayaScore>,
        val hadeethClass: HaddethClass

)

data class RiwayaScore(
        val hadeethScore: HadeethScore,
        val imam: Imam,
        /**
         * the reason why hadeeth got such a score
         */
        val description: String
)

/**
 * represents a similar hadeeth class, for example when hadeeth is similar to another
 * with two different recitations then they belong to the same cluster or class
 */
data class HaddethClass(val id: String)

enum class HadeethScore {

    HASAN,
    DAEEF,
    MARFOO3,
    // Other types to be added

}


