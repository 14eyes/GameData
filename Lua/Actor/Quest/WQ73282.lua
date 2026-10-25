require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73282 = class("Quest73282", QuestActorProxy)
Quest73282.defaultAlias = "Quest73282"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73282:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73282:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7328207"] = self.OnSubStart7328207,
        ["7328201"] = self.OnSubStart7328201,
        ["7328202"] = self.OnSubStart7328202,
        ["7328204"] = self.OnSubStart7328204,
        ["7328205"] = self.OnSubStart7328205,
        ["7328206"] = self.OnSubStart7328206,
        ["7328203"] = self.OnSubStart7328203
    }
end

function Quest73282:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7328207"] = self.OnSubFinish7328207,
        ["7328201"] = self.OnSubFinish7328201,
        ["7328202"] = self.OnSubFinish7328202,
        ["7328204"] = self.OnSubFinish7328204,
        ["7328205"] = self.OnSubFinish7328205,
        ["7328206"] = self.OnSubFinish7328206,
        ["7328203"] = self.OnSubFinish7328203
    }
end

function Quest73282:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73282:Start()
    print("Start")
end

function Quest73282:OnDestroy()
    print("OnDestroy")
end

function Quest73282:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73282:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73282:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73282:OnSubStart7328207(arg1)
    print("OnSubStart7328207")
    this:CreateQuestNpc(arg1, npcs.Npc20842Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4292Data.id, 2)
end

function Quest73282:OnSubFinish7328207(arg1)
    print("OnSubFinish7328207")
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73282:OnSubStart7328201(arg1)
    print("OnSubStart7328201")
end

function Quest73282:OnSubFinish7328201(arg1)
    print("OnSubFinish7328201")
end

function Quest73282:OnSubStart7328202(arg1)
    print("OnSubStart7328202")
    this:CreateQuestNpc(arg1, npcs.Npc20842Data.id, 1)
    actorMgr:CreateActorWithPos("Q7328202_EnterTrigger", "Actor/Gadget/Q7328202_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328204_N20842").pos, sceneData:GetDummyPoint(3, "Q7328204_N20842").rot, true, false, 3)
end

function Quest73282:OnSubFinish7328202(arg1)
    print("OnSubFinish7328202")
end

function Quest73282:OnSubStart7328204(arg1)
    print("OnSubStart7328204")
    actorMgr:CreateActorWithPos("Q7328204_EnterTrigger", "Actor/Gadget/Q7328204_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328206_guide").pos, sceneData:GetDummyPoint(3, "Q7328206_guide").rot, true, false, 3)
end

function Quest73282:OnSubFinish7328204(arg1)
    print("OnSubFinish7328204")
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73282:OnSubStart7328205(arg1)
    print("OnSubStart7328205")
    this:SafeDestroyQuestNpc(npcs.Npc4292Data.alias, 3)
end

function Quest73282:OnSubFinish7328205(arg1)
    print("OnSubFinish7328205")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest73282:OnSubStart7328206(arg1)
    print("OnSubStart7328206")
    this:CreateQuestNpc(arg1, npcs.Npc20932Data.id, 1)
end

function Quest73282:OnSubFinish7328206(arg1)
    print("OnSubFinish7328206")
    this:SafeDestroyQuestNpc(npcs.Npc20932Data.alias, 3)
end

function Quest73282:OnSubStart7328203(arg1)
    print("OnSubStart7328203")
end

function Quest73282:OnSubFinish7328203(arg1)
    print("OnSubFinish7328203")
end

return Quest73282
