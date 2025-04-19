/*
単独でキーが押されたときに、Sendする。
「~」と併用して、他修飾キーに影響を与えたくない場合に活用する。
e.g. ~LControl Up:: SingleTap("LControl", "{Escape}")
*/
SingleTap(expectedKey, sendKey) {
    if (A_PriorKey = expectedKey) {
        Send(sendKey)
    }
}
