require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76062 = class("Quest76062", QuestActorProxy)
Quest76062.defaultAlias = "Quest76062"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76062:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606218"] = self.OnSubStart7606218,
        ["7606203"] = self.OnSubStart7606203,
        ["7606219"] = self.OnSubStart7606219,
        ["7606222"] = self.OnSubStart7606222,
        ["7606223"] = self.OnSubStart7606223,
        ["7606220"] = self.OnSubStart7606220,
        ["7606201"] = self.OnSubStart7606201,
        ["7606202"] = self.OnSubStart7606202,
        ["7606204"] = self.OnSubStart7606204,
        ["7606205"] = self.OnSubStart7606205,
        ["7606206"] = self.OnSubStart7606206,
        ["7606217"] = self.OnSubStart7606217,
        ["7606207"] = self.OnSubStart7606207,
        ["7606224"] = self.OnSubStart7606224,
        ["7606225"] = self.OnSubStart7606225,
        ["7606211"] = self.OnSubStart7606211,
        ["7606208"] = self.OnSubStart7606208,
        ["7606209"] = self.OnSubStart7606209,
        ["7606210"] = self.OnSubStart7606210,
        ["7606213"] = self.OnSubStart7606213,
        ["7606221"] = self.OnSubStart7606221,
        ["7606214"] = self.OnSubStart7606214,
        ["7606215"] = self.OnSubStart7606215,
        ["7606212"] = self.OnSubStart7606212,
        ["7606216"] = self.OnSubStart7606216
    }
end

function Quest76062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606218"] = self.OnSubFinish7606218,
        ["7606203"] = self.OnSubFinish7606203,
        ["7606219"] = self.OnSubFinish7606219,
        ["7606222"] = self.OnSubFinish7606222,
        ["7606223"] = self.OnSubFinish7606223,
        ["7606220"] = self.OnSubFinish7606220,
        ["7606201"] = self.OnSubFinish7606201,
        ["7606202"] = self.OnSubFinish7606202,
        ["7606204"] = self.OnSubFinish7606204,
        ["7606205"] = self.OnSubFinish7606205,
        ["7606206"] = self.OnSubFinish7606206,
        ["7606217"] = self.OnSubFinish7606217,
        ["7606207"] = self.OnSubFinish7606207,
        ["7606224"] = self.OnSubFinish7606224,
        ["7606225"] = self.OnSubFinish7606225,
        ["7606211"] = self.OnSubFinish7606211,
        ["7606208"] = self.OnSubFinish7606208,
        ["7606209"] = self.OnSubFinish7606209,
        ["7606210"] = self.OnSubFinish7606210,
        ["7606213"] = self.OnSubFinish7606213,
        ["7606221"] = self.OnSubFinish7606221,
        ["7606214"] = self.OnSubFinish7606214,
        ["7606215"] = self.OnSubFinish7606215,
        ["7606212"] = self.OnSubFinish7606212,
        ["7606216"] = self.OnSubFinish7606216
    }
end

function Quest76062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7606218"] = self.OnSubFailed7606218,
        ["7606203"] = self.OnSubFailed7606203,
        ["7606219"] = self.OnSubFailed7606219,
        ["7606222"] = self.OnSubFailed7606222,
        ["7606223"] = self.OnSubFailed7606223,
        ["7606211"] = self.OnSubFailed7606211,
        ["7606208"] = self.OnSubFailed7606208,
        ["7606214"] = self.OnSubFailed7606214,
        ["7606215"] = self.OnSubFailed7606215
    }
end

function Quest76062:Start()
    print("Start")
end

function Quest76062:OnDestroy()
    print("OnDestroy")
end

function Quest76062:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76062:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76062:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22268.alias, 102)
    this:DestroyNpcTrigger("Q7606209N22261Trigger")
    this:DestroyNpcTrigger("Q7606204N22261Trigger")
    this:UnCallDelayByQuest("Q7606202N22268CallDelay")
    this:DestroyNpcTrigger("Q7606202N22268Trigger")
end

function Quest76062:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76062:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest76062:OnSubStart7606218(arg1)
    print("OnSubStart7606218")
end

function Quest76062:OnSubFinish7606218(arg1)
    print("OnSubFinish7606218")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606218(arg1)
    print("OnSubFailed7606218")
    this:RecycleAllRes()
end

function Quest76062:OnSubStart7606203(arg1)
    print("OnSubStart7606203")
    actorUtils.BanUIByQuest(1, true, 76062)
end

function Quest76062:OnSubFinish7606203(arg1)
    print("OnSubFinish7606203")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606203(arg1)
    print("OnSubFailed7606203")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubStart7606219(arg1)
    print("OnSubStart7606219")
    actorUtils.BanUIByQuest(1, true, 76062)
end

function Quest76062:OnSubFinish7606219(arg1)
    print("OnSubFinish7606219")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606219(arg1)
    print("OnSubFailed7606219")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubStart7606222(arg1)
    print("OnSubStart7606222")
    this:PlayCutsceneIndex(7606222, function(arg1)
        actorUtils.FinishQuestID(false, 7606222)
        actorUtils.BanUIByQuest(1, true, 76062)
    end, nil, nil, false)
end

function Quest76062:OnSubFinish7606222(arg1)
    print("OnSubFinish7606222")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606222(arg1)
    print("OnSubFailed7606222")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubStart7606223(arg1)
    print("OnSubStart7606223")
    actorUtils.BanUIByQuest(1, true, 76062)
end

function Quest76062:OnSubFinish7606223(arg1)
    print("OnSubFinish7606223")
    this:SetNavigationByMainId(76062, true)
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubFailed7606223(arg1)
    print("OnSubFailed7606223")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubStart7606220(arg1)
    print("OnSubStart7606220")
    this:PlayCutsceneIndex(7606220, function(arg1)
        actorUtils.FinishQuestID(false, 7606220)
    end, nil, nil, false)
end

function Quest76062:OnSubFinish7606220(arg1)
    print("OnSubFinish7606220")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606201(arg1)
    print("OnSubStart7606201")
end

function Quest76062:OnSubFinish7606201(arg1)
    print("OnSubFinish7606201")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606202(arg1)
    print("OnSubStart7606202")
    this:CreateQuestNpc(arg1, npcs.Npc22268.id, 0, false, 0)
    this:NpcCreateWithNoBlackData(7606202, 1, npcs.Npc22262.id, 0, 10, 7606201, datas.NoBlack_01)
end

function Quest76062:OnSubFinish7606202(arg1)
    print("OnSubFinish7606202")
    this:SafeDestroyQuestNpc(npcs.Npc22268.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 102)
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606204(arg1)
    print("OnSubStart7606204")
end

function Quest76062:OnSubFinish7606204(arg1)
    print("OnSubFinish7606204")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606205(arg1)
    print("OnSubStart7606205")
end

function Quest76062:OnSubFinish7606205(arg1)
    print("OnSubFinish7606205")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606206(arg1)
    print("OnSubStart7606206")
end

function Quest76062:OnSubFinish7606206(arg1)
    print("OnSubFinish7606206")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606217(arg1)
    print("OnSubStart7606217")
end

function Quest76062:OnSubFinish7606217(arg1)
    print("OnSubFinish7606217")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606207(arg1)
    print("OnSubStart7606207")
end

function Quest76062:OnSubFinish7606207(arg1)
    print("OnSubFinish7606207")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606224(arg1)
    print("OnSubStart7606224")
end

function Quest76062:OnSubFinish7606224(arg1)
    print("OnSubFinish7606224")
end

function Quest76062:OnSubStart7606225(arg1)
    print("OnSubStart7606225")
end

function Quest76062:OnSubFinish7606225(arg1)
    print("OnSubFinish7606225")
end

function Quest76062:OnSubStart7606211(arg1)
    print("OnSubStart7606211")
end

function Quest76062:OnSubFinish7606211(arg1)
    print("OnSubFinish7606211")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606211(arg1)
    print("OnSubFailed7606211")
    this:RecycleAllRes()
end

function Quest76062:OnSubStart7606208(arg1)
    print("OnSubStart7606208")
end

function Quest76062:OnSubFinish7606208(arg1)
    print("OnSubFinish7606208")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606208(arg1)
    print("OnSubFailed7606208")
    this:RecycleAllRes()
end

function Quest76062:OnSubStart7606209(arg1)
    print("OnSubStart7606209")
end

function Quest76062:OnSubFinish7606209(arg1)
    print("OnSubFinish7606209")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606210(arg1)
    print("OnSubStart7606210")
end

function Quest76062:OnSubFinish7606210(arg1)
    print("OnSubFinish7606210")
end

function Quest76062:OnSubStart7606213(arg1)
    print("OnSubStart7606213")
end

function Quest76062:OnSubFinish7606213(arg1)
    print("OnSubFinish7606213")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606221(arg1)
    print("OnSubStart7606221")
    this:NpcCreateWithNoBlackData(7606221, 0, npcs.Npc22255.id, 0, 9, 7606204, datas.NoBlack_01)
end

function Quest76062:OnSubFinish7606221(arg1)
    print("OnSubFinish7606221")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606214(arg1)
    print("OnSubStart7606214")
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubFinish7606214(arg1)
    print("OnSubFinish7606214")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606214(arg1)
    print("OnSubFailed7606214")
    this:RecycleAllRes()
end

function Quest76062:OnSubStart7606215(arg1)
    print("OnSubStart7606215")
    actorUtils.BanUIByQuest(1, false, 76062)
end

function Quest76062:OnSubFinish7606215(arg1)
    print("OnSubFinish7606215")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubFailed7606215(arg1)
    print("OnSubFailed7606215")
    this:RecycleAllRes()
end

function Quest76062:OnSubStart7606212(arg1)
    print("OnSubStart7606212")
    this:PlayCutsceneIndex(7606212, function(arg1)
        this:TransmitPlayerByQuestId(7606212, 1, nil, function(arg1)
            actorUtils.FinishQuestID(false, 7606212)
        end, nil)
    end, nil, nil, false)
end

function Quest76062:OnSubFinish7606212(arg1)
    print("OnSubFinish7606212")
    this:SetNavigationByMainId(76062, true)
end

function Quest76062:OnSubStart7606216(arg1)
    print("OnSubStart7606216")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:NpcCreateWithNoBlackData(7606216, 0, npcs.Npc22255.id, 0, 30, 7606205, datas.NoBlack_01)
    this:CreateQuestNpc(arg1, npcs.Npc22262.id, 0, false, 0)
end

function Quest76062:OnSubFinish7606216(arg1)
    print("OnSubFinish7606216")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22255.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 102)
    this:SetNavigationByMainId(76131, true)
end

return Quest76062
