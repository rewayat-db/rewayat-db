package rewayate.db.model

interface HadeethApi {

    /**
     * TODO convert the method return to a paged query
     */
    fun getSimilareHadeeths(hadeethText : String) : List<Hadeeth>

    fun getAllHadeethsComingFromRowat(rowatChain: List<Rawi>): List<Hadeeth>

    fun getAllHadeethsComingFromRawi(rawi: Rawi): List<Hadeeth>

    fun getRawiDescription(rawiId: String): Rawi



}