require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70102 = class("Quest70102", QuestActorProxy)
Quest70102.defaultAlias = "Quest70102"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70102:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7010226"] = self.OnSubStart7010226,
        ["7010202"] = self.OnSubStart7010202,
        ["7010203"] = self.OnSubStart7010203,
        ["7010204"] = self.OnSubStart7010204,
        ["7010205"] = self.OnSubStart7010205,
        ["7010206"] = self.OnSubStart7010206,
        ["7010207"] = self.OnSubStart7010207,
        ["7010208"] = self.OnSubStart7010208,
        ["7010209"] = self.OnSubStart7010209,
        ["7010210"] = self.OnSubStart7010210,
        ["7010211"] = self.OnSubStart7010211,
        ["7010212"] = self.OnSubStart7010212,
        ["7010213"] = self.OnSubStart7010213,
        ["7010214"] = self.OnSubStart7010214,
        ["7010215"] = self.OnSubStart7010215,
        ["7010216"] = self.OnSubStart7010216,
        ["7010217"] = self.OnSubStart7010217,
        ["7010218"] = self.OnSubStart7010218,
        ["7010219"] = self.OnSubStart7010219,
        ["7010220"] = self.OnSubStart7010220,
        ["7010221"] = self.OnSubStart7010221,
        ["7010222"] = self.OnSubStart7010222,
        ["7010223"] = self.OnSubStart7010223,
        ["7010237"] = self.OnSubStart7010237,
        ["7010238"] = self.OnSubStart7010238,
        ["7010235"] = self.OnSubStart7010235,
        ["7010224"] = self.OnSubStart7010224,
        ["7010239"] = self.OnSubStart7010239,
        ["7010225"] = self.OnSubStart7010225,
        ["7010227"] = self.OnSubStart7010227,
        ["7010236"] = self.OnSubStart7010236,
        ["7010228"] = self.OnSubStart7010228,
        ["7010229"] = self.OnSubStart7010229,
        ["7010234"] = self.OnSubStart7010234,
        ["7010230"] = self.OnSubStart7010230,
        ["7010232"] = self.OnSubStart7010232
    }
end

function Quest70102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7010226"] = self.OnSubFinish7010226,
        ["7010202"] = self.OnSubFinish7010202,
        ["7010203"] = self.OnSubFinish7010203,
        ["7010204"] = self.OnSubFinish7010204,
        ["7010205"] = self.OnSubFinish7010205,
        ["7010206"] = self.OnSubFinish7010206,
        ["7010207"] = self.OnSubFinish7010207,
        ["7010208"] = self.OnSubFinish7010208,
        ["7010209"] = self.OnSubFinish7010209,
        ["7010210"] = self.OnSubFinish7010210,
        ["7010211"] = self.OnSubFinish7010211,
        ["7010212"] = self.OnSubFinish7010212,
        ["7010213"] = self.OnSubFinish7010213,
        ["7010214"] = self.OnSubFinish7010214,
        ["7010215"] = self.OnSubFinish7010215,
        ["7010216"] = self.OnSubFinish7010216,
        ["7010217"] = self.OnSubFinish7010217,
        ["7010218"] = self.OnSubFinish7010218,
        ["7010219"] = self.OnSubFinish7010219,
        ["7010220"] = self.OnSubFinish7010220,
        ["7010221"] = self.OnSubFinish7010221,
        ["7010222"] = self.OnSubFinish7010222,
        ["7010223"] = self.OnSubFinish7010223,
        ["7010237"] = self.OnSubFinish7010237,
        ["7010238"] = self.OnSubFinish7010238,
        ["7010235"] = self.OnSubFinish7010235,
        ["7010224"] = self.OnSubFinish7010224,
        ["7010239"] = self.OnSubFinish7010239,
        ["7010225"] = self.OnSubFinish7010225,
        ["7010227"] = self.OnSubFinish7010227,
        ["7010236"] = self.OnSubFinish7010236,
        ["7010228"] = self.OnSubFinish7010228,
        ["7010229"] = self.OnSubFinish7010229,
        ["7010234"] = self.OnSubFinish7010234,
        ["7010230"] = self.OnSubFinish7010230,
        ["7010232"] = self.OnSubFinish7010232
    }
end

function Quest70102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7010226"] = self.OnSubFailed7010226,
        ["7010202"] = self.OnSubFailed7010202,
        ["7010203"] = self.OnSubFailed7010203,
        ["7010204"] = self.OnSubFailed7010204,
        ["7010205"] = self.OnSubFailed7010205,
        ["7010206"] = self.OnSubFailed7010206,
        ["7010207"] = self.OnSubFailed7010207,
        ["7010208"] = self.OnSubFailed7010208,
        ["7010209"] = self.OnSubFailed7010209,
        ["7010210"] = self.OnSubFailed7010210,
        ["7010211"] = self.OnSubFailed7010211,
        ["7010212"] = self.OnSubFailed7010212,
        ["7010213"] = self.OnSubFailed7010213,
        ["7010214"] = self.OnSubFailed7010214,
        ["7010215"] = self.OnSubFailed7010215,
        ["7010216"] = self.OnSubFailed7010216,
        ["7010217"] = self.OnSubFailed7010217,
        ["7010218"] = self.OnSubFailed7010218,
        ["7010219"] = self.OnSubFailed7010219,
        ["7010220"] = self.OnSubFailed7010220,
        ["7010221"] = self.OnSubFailed7010221,
        ["7010222"] = self.OnSubFailed7010222,
        ["7010223"] = self.OnSubFailed7010223,
        ["7010237"] = self.OnSubFailed7010237,
        ["7010238"] = self.OnSubFailed7010238,
        ["7010235"] = self.OnSubFailed7010235,
        ["7010224"] = self.OnSubFailed7010224,
        ["7010239"] = self.OnSubFailed7010239,
        ["7010225"] = self.OnSubFailed7010225,
        ["7010227"] = self.OnSubFailed7010227,
        ["7010236"] = self.OnSubFailed7010236,
        ["7010228"] = self.OnSubFailed7010228,
        ["7010229"] = self.OnSubFailed7010229,
        ["7010234"] = self.OnSubFailed7010234,
        ["7010230"] = self.OnSubFailed7010230,
        ["7010232"] = self.OnSubFailed7010232
    }
end

function Quest70102:Start()
    print("Start")
end

function Quest70102:OnDestroy()
    print("OnDestroy")
end

function Quest70102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70102:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70102:Narrator4()
    print("Narrator4")
    this:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest70102:Narrator2()
    print("Narrator2")
    this:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest70102:CStoPaimon()
    print("CStoPaimon")
    this:CreateQuestNpcById(7010226, npcs.PaimonData.id, 1)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest70102:CStoPlayer()
    print("CStoPlayer")
    this:TransmitPlayerByQuestId(7010226, 7010226)
end

function Quest70102:Narrator1()
    print("Narrator1")
    this:NarratorOnlyTask(datas.NarratorTable3, nil, "")
end

function Quest70102:OnSubStart7010226(arg1)
    print("OnSubStart7010226")
    actorMgr:CreateActorWithPos("Q70102Trigger", "Actor/Gadget/Q70102Trigger", 70900002, 0, {x = 1319.976, y = 270.419, z = -787.684}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest70102:OnSubFinish7010226(arg1)
    print("OnSubFinish7010226")
    this:NarratorOnlyTask(datas.NarratorTable5, nil, "")
end

function Quest70102:OnSubFailed7010226(arg1)
    print("OnSubFailed7010226")
end

function Quest70102:OnSubStart7010202(arg1)
    print("OnSubStart7010202")
end

function Quest70102:OnSubFinish7010202(arg1)
    print("OnSubFinish7010202")
    this:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest70102:OnSubFailed7010202(arg1)
    print("OnSubFailed7010202")
end

function Quest70102:OnSubStart7010203(arg1)
    print("OnSubStart7010203")
end

function Quest70102:OnSubFinish7010203(arg1)
    print("OnSubFinish7010203")
    this:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest70102:OnSubFailed7010203(arg1)
    print("OnSubFailed7010203")
end

function Quest70102:OnSubStart7010204(arg1)
    print("OnSubStart7010204")
end

function Quest70102:OnSubFinish7010204(arg1)
    print("OnSubFinish7010204")
    this:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest70102:OnSubFailed7010204(arg1)
    print("OnSubFailed7010204")
end

function Quest70102:OnSubStart7010205(arg1)
    print("OnSubStart7010205")
end

function Quest70102:OnSubFinish7010205(arg1)
    print("OnSubFinish7010205")
    this:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest70102:OnSubFailed7010205(arg1)
    print("OnSubFailed7010205")
end

function Quest70102:OnSubStart7010206(arg1)
    print("OnSubStart7010206")
end

function Quest70102:OnSubFinish7010206(arg1)
    print("OnSubFinish7010206")
end

function Quest70102:OnSubFailed7010206(arg1)
    print("OnSubFailed7010206")
end

function Quest70102:OnSubStart7010207(arg1)
    print("OnSubStart7010207")
end

function Quest70102:OnSubFinish7010207(arg1)
    print("OnSubFinish7010207")
end

function Quest70102:OnSubFailed7010207(arg1)
    print("OnSubFailed7010207")
end

function Quest70102:OnSubStart7010208(arg1)
    print("OnSubStart7010208")
end

function Quest70102:OnSubFinish7010208(arg1)
    print("OnSubFinish7010208")
end

function Quest70102:OnSubFailed7010208(arg1)
    print("OnSubFailed7010208")
end

function Quest70102:OnSubStart7010209(arg1)
    print("OnSubStart7010209")
end

function Quest70102:OnSubFinish7010209(arg1)
    print("OnSubFinish7010209")
end

function Quest70102:OnSubFailed7010209(arg1)
    print("OnSubFailed7010209")
end

function Quest70102:OnSubStart7010210(arg1)
    print("OnSubStart7010210")
end

function Quest70102:OnSubFinish7010210(arg1)
    print("OnSubFinish7010210")
end

function Quest70102:OnSubFailed7010210(arg1)
    print("OnSubFailed7010210")
end

function Quest70102:OnSubStart7010211(arg1)
    print("OnSubStart7010211")
end

function Quest70102:OnSubFinish7010211(arg1)
    print("OnSubFinish7010211")
end

function Quest70102:OnSubFailed7010211(arg1)
    print("OnSubFailed7010211")
end

function Quest70102:OnSubStart7010212(arg1)
    print("OnSubStart7010212")
end

function Quest70102:OnSubFinish7010212(arg1)
    print("OnSubFinish7010212")
end

function Quest70102:OnSubFailed7010212(arg1)
    print("OnSubFailed7010212")
end

function Quest70102:OnSubStart7010213(arg1)
    print("OnSubStart7010213")
end

function Quest70102:OnSubFinish7010213(arg1)
    print("OnSubFinish7010213")
end

function Quest70102:OnSubFailed7010213(arg1)
    print("OnSubFailed7010213")
end

function Quest70102:OnSubStart7010214(arg1)
    print("OnSubStart7010214")
end

function Quest70102:OnSubFinish7010214(arg1)
    print("OnSubFinish7010214")
end

function Quest70102:OnSubFailed7010214(arg1)
    print("OnSubFailed7010214")
end

function Quest70102:OnSubStart7010215(arg1)
    print("OnSubStart7010215")
end

function Quest70102:OnSubFinish7010215(arg1)
    print("OnSubFinish7010215")
end

function Quest70102:OnSubFailed7010215(arg1)
    print("OnSubFailed7010215")
end

function Quest70102:OnSubStart7010216(arg1)
    print("OnSubStart7010216")
end

function Quest70102:OnSubFinish7010216(arg1)
    print("OnSubFinish7010216")
end

function Quest70102:OnSubFailed7010216(arg1)
    print("OnSubFailed7010216")
end

function Quest70102:OnSubStart7010217(arg1)
    print("OnSubStart7010217")
end

function Quest70102:OnSubFinish7010217(arg1)
    print("OnSubFinish7010217")
end

function Quest70102:OnSubFailed7010217(arg1)
    print("OnSubFailed7010217")
end

function Quest70102:OnSubStart7010218(arg1)
    print("OnSubStart7010218")
end

function Quest70102:OnSubFinish7010218(arg1)
    print("OnSubFinish7010218")
end

function Quest70102:OnSubFailed7010218(arg1)
    print("OnSubFailed7010218")
end

function Quest70102:OnSubStart7010219(arg1)
    print("OnSubStart7010219")
end

function Quest70102:OnSubFinish7010219(arg1)
    print("OnSubFinish7010219")
end

function Quest70102:OnSubFailed7010219(arg1)
    print("OnSubFailed7010219")
end

function Quest70102:OnSubStart7010220(arg1)
    print("OnSubStart7010220")
end

function Quest70102:OnSubFinish7010220(arg1)
    print("OnSubFinish7010220")
end

function Quest70102:OnSubFailed7010220(arg1)
    print("OnSubFailed7010220")
end

function Quest70102:OnSubStart7010221(arg1)
    print("OnSubStart7010221")
end

function Quest70102:OnSubFinish7010221(arg1)
    print("OnSubFinish7010221")
end

function Quest70102:OnSubFailed7010221(arg1)
    print("OnSubFailed7010221")
end

function Quest70102:OnSubStart7010222(arg1)
    print("OnSubStart7010222")
end

function Quest70102:OnSubFinish7010222(arg1)
    print("OnSubFinish7010222")
end

function Quest70102:OnSubFailed7010222(arg1)
    print("OnSubFailed7010222")
end

function Quest70102:OnSubStart7010223(arg1)
    print("OnSubStart7010223")
end

function Quest70102:OnSubFinish7010223(arg1)
    print("OnSubFinish7010223")
end

function Quest70102:OnSubFailed7010223(arg1)
    print("OnSubFailed7010223")
end

function Quest70102:OnSubStart7010237(arg1)
    print("OnSubStart7010237")
end

function Quest70102:OnSubFinish7010237(arg1)
    print("OnSubFinish7010237")
end

function Quest70102:OnSubFailed7010237(arg1)
    print("OnSubFailed7010237")
end

function Quest70102:OnSubStart7010238(arg1)
    print("OnSubStart7010238")
end

function Quest70102:OnSubFinish7010238(arg1)
    print("OnSubFinish7010238")
end

function Quest70102:OnSubFailed7010238(arg1)
    print("OnSubFailed7010238")
end

function Quest70102:OnSubStart7010235(arg1)
    print("OnSubStart7010235")
end

function Quest70102:OnSubFinish7010235(arg1)
    print("OnSubFinish7010235")
end

function Quest70102:OnSubFailed7010235(arg1)
    print("OnSubFailed7010235")
end

function Quest70102:OnSubStart7010224(arg1)
    print("OnSubStart7010224")
end

function Quest70102:OnSubFinish7010224(arg1)
    print("OnSubFinish7010224")
    this:CallDelay(3, self.Narrator1)
end

function Quest70102:OnSubFailed7010224(arg1)
    print("OnSubFailed7010224")
end

function Quest70102:OnSubStart7010239(arg1)
    print("OnSubStart7010239")
end

function Quest70102:OnSubFinish7010239(arg1)
    print("OnSubFinish7010239")
end

function Quest70102:OnSubFailed7010239(arg1)
    print("OnSubFailed7010239")
end

function Quest70102:OnSubStart7010225(arg1)
    print("OnSubStart7010225")
end

function Quest70102:OnSubFinish7010225(arg1)
    print("OnSubFinish7010225")
end

function Quest70102:OnSubFailed7010225(arg1)
    print("OnSubFailed7010225")
end

function Quest70102:OnSubStart7010227(arg1)
    print("OnSubStart7010227")
end

function Quest70102:OnSubFinish7010227(arg1)
    print("OnSubFinish7010227")
end

function Quest70102:OnSubFailed7010227(arg1)
    print("OnSubFailed7010227")
end

function Quest70102:OnSubStart7010236(arg1)
    print("OnSubStart7010236")
end

function Quest70102:OnSubFinish7010236(arg1)
    print("OnSubFinish7010236")
    this:PlayCutsceneIndex("7010228", nil, nil, nil, false)
    this:CallDelay(2, self.Narrator2)
end

function Quest70102:OnSubFailed7010236(arg1)
    print("OnSubFailed7010236")
end

function Quest70102:OnSubStart7010228(arg1)
    print("OnSubStart7010228")
end

function Quest70102:OnSubFinish7010228(arg1)
    print("OnSubFinish7010228")
    this:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest70102:OnSubFailed7010228(arg1)
    print("OnSubFailed7010228")
end

function Quest70102:OnSubStart7010229(arg1)
    print("OnSubStart7010229")
end

function Quest70102:OnSubFinish7010229(arg1)
    print("OnSubFinish7010229")
end

function Quest70102:OnSubFailed7010229(arg1)
    print("OnSubFailed7010229")
end

function Quest70102:OnSubStart7010234(arg1)
    print("OnSubStart7010234")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7010234, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70102:OnSubFinish7010234(arg1)
    print("OnSubFinish7010234")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70102:OnSubFailed7010234(arg1)
    print("OnSubFailed7010234")
end

function Quest70102:OnSubStart7010230(arg1)
    print("OnSubStart7010230")
end

function Quest70102:OnSubFinish7010230(arg1)
    print("OnSubFinish7010230")
end

function Quest70102:OnSubFailed7010230(arg1)
    print("OnSubFailed7010230")
end

function Quest70102:OnSubStart7010232(arg1)
    print("OnSubStart7010232")
    this:ShowBlackScreen(0.5, 4, 0.5, nil, nil, nil, "QUEST_Message_Q7010232")
end

function Quest70102:OnSubFinish7010232(arg1)
    print("OnSubFinish7010232")
end

function Quest70102:OnSubFailed7010232(arg1)
    print("OnSubFailed7010232")
end

return Quest70102
