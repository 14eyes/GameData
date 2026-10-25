require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72112 = class("Quest72112", QuestActorProxy)
Quest72112.defaultAlias = "Quest72112"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72112:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211225"] = self.OnSubStart7211225,
        ["7211235"] = self.OnSubStart7211235,
        ["7211236"] = self.OnSubStart7211236,
        ["7211215"] = self.OnSubStart7211215,
        ["7211219"] = self.OnSubStart7211219,
        ["7211220"] = self.OnSubStart7211220,
        ["7211221"] = self.OnSubStart7211221,
        ["7211222"] = self.OnSubStart7211222,
        ["7211223"] = self.OnSubStart7211223,
        ["7211216"] = self.OnSubStart7211216,
        ["7211224"] = self.OnSubStart7211224,
        ["7211201"] = self.OnSubStart7211201,
        ["7211202"] = self.OnSubStart7211202,
        ["7211203"] = self.OnSubStart7211203,
        ["7211204"] = self.OnSubStart7211204,
        ["7211205"] = self.OnSubStart7211205,
        ["7211206"] = self.OnSubStart7211206,
        ["7211207"] = self.OnSubStart7211207,
        ["7211226"] = self.OnSubStart7211226,
        ["7211227"] = self.OnSubStart7211227,
        ["7211228"] = self.OnSubStart7211228,
        ["7211229"] = self.OnSubStart7211229,
        ["7211230"] = self.OnSubStart7211230,
        ["7211231"] = self.OnSubStart7211231,
        ["7211232"] = self.OnSubStart7211232,
        ["7211233"] = self.OnSubStart7211233,
        ["7211234"] = self.OnSubStart7211234,
        ["7211208"] = self.OnSubStart7211208,
        ["7211209"] = self.OnSubStart7211209,
        ["7211210"] = self.OnSubStart7211210,
        ["7211211"] = self.OnSubStart7211211,
        ["7211212"] = self.OnSubStart7211212,
        ["7211213"] = self.OnSubStart7211213,
        ["7211214"] = self.OnSubStart7211214,
        ["7211217"] = self.OnSubStart7211217,
        ["7211218"] = self.OnSubStart7211218
    }
end

function Quest72112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211225"] = self.OnSubFinish7211225,
        ["7211235"] = self.OnSubFinish7211235,
        ["7211236"] = self.OnSubFinish7211236,
        ["7211215"] = self.OnSubFinish7211215,
        ["7211219"] = self.OnSubFinish7211219,
        ["7211220"] = self.OnSubFinish7211220,
        ["7211221"] = self.OnSubFinish7211221,
        ["7211222"] = self.OnSubFinish7211222,
        ["7211223"] = self.OnSubFinish7211223,
        ["7211216"] = self.OnSubFinish7211216,
        ["7211224"] = self.OnSubFinish7211224,
        ["7211201"] = self.OnSubFinish7211201,
        ["7211202"] = self.OnSubFinish7211202,
        ["7211203"] = self.OnSubFinish7211203,
        ["7211204"] = self.OnSubFinish7211204,
        ["7211205"] = self.OnSubFinish7211205,
        ["7211206"] = self.OnSubFinish7211206,
        ["7211207"] = self.OnSubFinish7211207,
        ["7211226"] = self.OnSubFinish7211226,
        ["7211227"] = self.OnSubFinish7211227,
        ["7211228"] = self.OnSubFinish7211228,
        ["7211229"] = self.OnSubFinish7211229,
        ["7211230"] = self.OnSubFinish7211230,
        ["7211231"] = self.OnSubFinish7211231,
        ["7211232"] = self.OnSubFinish7211232,
        ["7211233"] = self.OnSubFinish7211233,
        ["7211234"] = self.OnSubFinish7211234,
        ["7211208"] = self.OnSubFinish7211208,
        ["7211209"] = self.OnSubFinish7211209,
        ["7211210"] = self.OnSubFinish7211210,
        ["7211211"] = self.OnSubFinish7211211,
        ["7211212"] = self.OnSubFinish7211212,
        ["7211213"] = self.OnSubFinish7211213,
        ["7211214"] = self.OnSubFinish7211214,
        ["7211217"] = self.OnSubFinish7211217,
        ["7211218"] = self.OnSubFinish7211218
    }
end

function Quest72112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211225"] = self.OnSubFailed7211225,
        ["7211235"] = self.OnSubFailed7211235,
        ["7211236"] = self.OnSubFailed7211236,
        ["7211215"] = self.OnSubFailed7211215,
        ["7211219"] = self.OnSubFailed7211219,
        ["7211220"] = self.OnSubFailed7211220,
        ["7211221"] = self.OnSubFailed7211221,
        ["7211222"] = self.OnSubFailed7211222,
        ["7211223"] = self.OnSubFailed7211223,
        ["7211216"] = self.OnSubFailed7211216,
        ["7211224"] = self.OnSubFailed7211224,
        ["7211201"] = self.OnSubFailed7211201,
        ["7211202"] = self.OnSubFailed7211202,
        ["7211203"] = self.OnSubFailed7211203,
        ["7211204"] = self.OnSubFailed7211204,
        ["7211205"] = self.OnSubFailed7211205,
        ["7211206"] = self.OnSubFailed7211206,
        ["7211207"] = self.OnSubFailed7211207,
        ["7211226"] = self.OnSubFailed7211226,
        ["7211227"] = self.OnSubFailed7211227,
        ["7211228"] = self.OnSubFailed7211228,
        ["7211229"] = self.OnSubFailed7211229,
        ["7211230"] = self.OnSubFailed7211230,
        ["7211231"] = self.OnSubFailed7211231,
        ["7211232"] = self.OnSubFailed7211232,
        ["7211233"] = self.OnSubFailed7211233,
        ["7211234"] = self.OnSubFailed7211234,
        ["7211208"] = self.OnSubFailed7211208,
        ["7211209"] = self.OnSubFailed7211209,
        ["7211210"] = self.OnSubFailed7211210,
        ["7211211"] = self.OnSubFailed7211211,
        ["7211212"] = self.OnSubFailed7211212,
        ["7211213"] = self.OnSubFailed7211213,
        ["7211214"] = self.OnSubFailed7211214,
        ["7211217"] = self.OnSubFailed7211217,
        ["7211218"] = self.OnSubFailed7211218
    }
end

function Quest72112:Start()
    print("Start")
end

function Quest72112:OnDestroy()
    print("OnDestroy")
end

function Quest72112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72112:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72112:OnSubStart7211225(arg1)
    print("OnSubStart7211225")
    self:CreateQuestNpc(arg1, npcs.Npc20317Data.id, 1)
end

function Quest72112:OnSubFinish7211225(arg1)
    print("OnSubFinish7211225")
end

function Quest72112:OnSubFailed7211225(arg1)
    print("OnSubFailed7211225")
end

function Quest72112:OnSubStart7211235(arg1)
    print("OnSubStart7211235")
end

function Quest72112:OnSubFinish7211235(arg1)
    print("OnSubFinish7211235")
end

function Quest72112:OnSubFailed7211235(arg1)
    print("OnSubFailed7211235")
end

function Quest72112:OnSubStart7211236(arg1)
    print("OnSubStart7211236")
    self:RequestInteraction(npcs.Npc20317Data.alias)
end

function Quest72112:OnSubFinish7211236(arg1)
    print("OnSubFinish7211236")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72112:OnSubFailed7211236(arg1)
    print("OnSubFailed7211236")
end

function Quest72112:OnSubStart7211215(arg1)
    print("OnSubStart7211215")
end

function Quest72112:OnSubFinish7211215(arg1)
    print("OnSubFinish7211215")
end

function Quest72112:OnSubFailed7211215(arg1)
    print("OnSubFailed7211215")
end

function Quest72112:OnSubStart7211219(arg1)
    print("OnSubStart7211219")
end

function Quest72112:OnSubFinish7211219(arg1)
    print("OnSubFinish7211219")
end

function Quest72112:OnSubFailed7211219(arg1)
    print("OnSubFailed7211219")
end

function Quest72112:OnSubStart7211220(arg1)
    print("OnSubStart7211220")
end

function Quest72112:OnSubFinish7211220(arg1)
    print("OnSubFinish7211220")
end

function Quest72112:OnSubFailed7211220(arg1)
    print("OnSubFailed7211220")
end

function Quest72112:OnSubStart7211221(arg1)
    print("OnSubStart7211221")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20317Data.id, 1)
    end)
end

function Quest72112:OnSubFinish7211221(arg1)
    print("OnSubFinish7211221")
end

function Quest72112:OnSubFailed7211221(arg1)
    print("OnSubFailed7211221")
end

function Quest72112:OnSubStart7211222(arg1)
    print("OnSubStart7211222")
end

function Quest72112:OnSubFinish7211222(arg1)
    print("OnSubFinish7211222")
    self:SafeDestroyQuestNpc(npcs.Npc20317Data.alias, 3)
end

function Quest72112:OnSubFailed7211222(arg1)
    print("OnSubFailed7211222")
end

function Quest72112:OnSubStart7211223(arg1)
    print("OnSubStart7211223")
end

function Quest72112:OnSubFinish7211223(arg1)
    print("OnSubFinish7211223")
end

function Quest72112:OnSubFailed7211223(arg1)
    print("OnSubFailed7211223")
end

function Quest72112:OnSubStart7211216(arg1)
    print("OnSubStart7211216")
end

function Quest72112:OnSubFinish7211216(arg1)
    print("OnSubFinish7211216")
end

function Quest72112:OnSubFailed7211216(arg1)
    print("OnSubFailed7211216")
end

function Quest72112:OnSubStart7211224(arg1)
    print("OnSubStart7211224")
end

function Quest72112:OnSubFinish7211224(arg1)
    print("OnSubFinish7211224")
end

function Quest72112:OnSubFailed7211224(arg1)
    print("OnSubFailed7211224")
end

function Quest72112:OnSubStart7211201(arg1)
    print("OnSubStart7211201")
end

function Quest72112:OnSubFinish7211201(arg1)
    print("OnSubFinish7211201")
end

function Quest72112:OnSubFailed7211201(arg1)
    print("OnSubFailed7211201")
end

function Quest72112:OnSubStart7211202(arg1)
    print("OnSubStart7211202")
end

function Quest72112:OnSubFinish7211202(arg1)
    print("OnSubFinish7211202")
end

function Quest72112:OnSubFailed7211202(arg1)
    print("OnSubFailed7211202")
end

function Quest72112:OnSubStart7211203(arg1)
    print("OnSubStart7211203")
end

function Quest72112:OnSubFinish7211203(arg1)
    print("OnSubFinish7211203")
end

function Quest72112:OnSubFailed7211203(arg1)
    print("OnSubFailed7211203")
end

function Quest72112:OnSubStart7211204(arg1)
    print("OnSubStart7211204")
end

function Quest72112:OnSubFinish7211204(arg1)
    print("OnSubFinish7211204")
end

function Quest72112:OnSubFailed7211204(arg1)
    print("OnSubFailed7211204")
end

function Quest72112:OnSubStart7211205(arg1)
    print("OnSubStart7211205")
end

function Quest72112:OnSubFinish7211205(arg1)
    print("OnSubFinish7211205")
end

function Quest72112:OnSubFailed7211205(arg1)
    print("OnSubFailed7211205")
end

function Quest72112:OnSubStart7211206(arg1)
    print("OnSubStart7211206")
end

function Quest72112:OnSubFinish7211206(arg1)
    print("OnSubFinish7211206")
end

function Quest72112:OnSubFailed7211206(arg1)
    print("OnSubFailed7211206")
end

function Quest72112:OnSubStart7211207(arg1)
    print("OnSubStart7211207")
end

function Quest72112:OnSubFinish7211207(arg1)
    print("OnSubFinish7211207")
end

function Quest72112:OnSubFailed7211207(arg1)
    print("OnSubFailed7211207")
end

function Quest72112:OnSubStart7211226(arg1)
    print("OnSubStart7211226")
end

function Quest72112:OnSubFinish7211226(arg1)
    print("OnSubFinish7211226")
end

function Quest72112:OnSubFailed7211226(arg1)
    print("OnSubFailed7211226")
end

function Quest72112:OnSubStart7211227(arg1)
    print("OnSubStart7211227")
end

function Quest72112:OnSubFinish7211227(arg1)
    print("OnSubFinish7211227")
end

function Quest72112:OnSubFailed7211227(arg1)
    print("OnSubFailed7211227")
end

function Quest72112:OnSubStart7211228(arg1)
    print("OnSubStart7211228")
end

function Quest72112:OnSubFinish7211228(arg1)
    print("OnSubFinish7211228")
end

function Quest72112:OnSubFailed7211228(arg1)
    print("OnSubFailed7211228")
end

function Quest72112:OnSubStart7211229(arg1)
    print("OnSubStart7211229")
end

function Quest72112:OnSubFinish7211229(arg1)
    print("OnSubFinish7211229")
end

function Quest72112:OnSubFailed7211229(arg1)
    print("OnSubFailed7211229")
end

function Quest72112:OnSubStart7211230(arg1)
    print("OnSubStart7211230")
end

function Quest72112:OnSubFinish7211230(arg1)
    print("OnSubFinish7211230")
end

function Quest72112:OnSubFailed7211230(arg1)
    print("OnSubFailed7211230")
end

function Quest72112:OnSubStart7211231(arg1)
    print("OnSubStart7211231")
end

function Quest72112:OnSubFinish7211231(arg1)
    print("OnSubFinish7211231")
end

function Quest72112:OnSubFailed7211231(arg1)
    print("OnSubFailed7211231")
end

function Quest72112:OnSubStart7211232(arg1)
    print("OnSubStart7211232")
end

function Quest72112:OnSubFinish7211232(arg1)
    print("OnSubFinish7211232")
end

function Quest72112:OnSubFailed7211232(arg1)
    print("OnSubFailed7211232")
end

function Quest72112:OnSubStart7211233(arg1)
    print("OnSubStart7211233")
end

function Quest72112:OnSubFinish7211233(arg1)
    print("OnSubFinish7211233")
end

function Quest72112:OnSubFailed7211233(arg1)
    print("OnSubFailed7211233")
end

function Quest72112:OnSubStart7211234(arg1)
    print("OnSubStart7211234")
end

function Quest72112:OnSubFinish7211234(arg1)
    print("OnSubFinish7211234")
end

function Quest72112:OnSubFailed7211234(arg1)
    print("OnSubFailed7211234")
end

function Quest72112:OnSubStart7211208(arg1)
    print("OnSubStart7211208")
end

function Quest72112:OnSubFinish7211208(arg1)
    print("OnSubFinish7211208")
end

function Quest72112:OnSubFailed7211208(arg1)
    print("OnSubFailed7211208")
end

function Quest72112:OnSubStart7211209(arg1)
    print("OnSubStart7211209")
end

function Quest72112:OnSubFinish7211209(arg1)
    print("OnSubFinish7211209")
end

function Quest72112:OnSubFailed7211209(arg1)
    print("OnSubFailed7211209")
end

function Quest72112:OnSubStart7211210(arg1)
    print("OnSubStart7211210")
end

function Quest72112:OnSubFinish7211210(arg1)
    print("OnSubFinish7211210")
end

function Quest72112:OnSubFailed7211210(arg1)
    print("OnSubFailed7211210")
end

function Quest72112:OnSubStart7211211(arg1)
    print("OnSubStart7211211")
end

function Quest72112:OnSubFinish7211211(arg1)
    print("OnSubFinish7211211")
end

function Quest72112:OnSubFailed7211211(arg1)
    print("OnSubFailed7211211")
end

function Quest72112:OnSubStart7211212(arg1)
    print("OnSubStart7211212")
end

function Quest72112:OnSubFinish7211212(arg1)
    print("OnSubFinish7211212")
end

function Quest72112:OnSubFailed7211212(arg1)
    print("OnSubFailed7211212")
end

function Quest72112:OnSubStart7211213(arg1)
    print("OnSubStart7211213")
end

function Quest72112:OnSubFinish7211213(arg1)
    print("OnSubFinish7211213")
end

function Quest72112:OnSubFailed7211213(arg1)
    print("OnSubFailed7211213")
end

function Quest72112:OnSubStart7211214(arg1)
    print("OnSubStart7211214")
end

function Quest72112:OnSubFinish7211214(arg1)
    print("OnSubFinish7211214")
end

function Quest72112:OnSubFailed7211214(arg1)
    print("OnSubFailed7211214")
end

function Quest72112:OnSubStart7211217(arg1)
    print("OnSubStart7211217")
end

function Quest72112:OnSubFinish7211217(arg1)
    print("OnSubFinish7211217")
end

function Quest72112:OnSubFailed7211217(arg1)
    print("OnSubFailed7211217")
end

function Quest72112:OnSubStart7211218(arg1)
    print("OnSubStart7211218")
end

function Quest72112:OnSubFinish7211218(arg1)
    print("OnSubFinish7211218")
end

function Quest72112:OnSubFailed7211218(arg1)
    print("OnSubFailed7211218")
end

return Quest72112
