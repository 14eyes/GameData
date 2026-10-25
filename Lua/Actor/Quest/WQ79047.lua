require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79047 = class("Quest79047", QuestActorProxy)
Quest79047.defaultAlias = "Quest79047"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79047:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7904701"] = self.OnSubStart7904701,
        ["7904702"] = self.OnSubStart7904702,
        ["7904703"] = self.OnSubStart7904703,
        ["7904705"] = self.OnSubStart7904705,
        ["7904706"] = self.OnSubStart7904706,
        ["7904707"] = self.OnSubStart7904707,
        ["7904704"] = self.OnSubStart7904704
    }
end

function Quest79047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7904701"] = self.OnSubFinish7904701,
        ["7904702"] = self.OnSubFinish7904702,
        ["7904703"] = self.OnSubFinish7904703,
        ["7904705"] = self.OnSubFinish7904705,
        ["7904706"] = self.OnSubFinish7904706,
        ["7904707"] = self.OnSubFinish7904707,
        ["7904704"] = self.OnSubFinish7904704
    }
end

function Quest79047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79047:Start()
    print("Start")
end

function Quest79047:OnDestroy()
    print("OnDestroy")
end

function Quest79047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79047:OnSubStart7904701(arg1)
    print("OnSubStart7904701")
    this:CreateQuestNpcWithTriggerBlack("Q7904701talk", 7904701, npcs.Npc20978Data.id, 1, 3, 1)
end

function Quest79047:OnSubFinish7904701(arg1)
    print("OnSubFinish7904701")
    this:SafeDestroyQuestNpc(npcs.Npc20978Data.alias, 10)
end

function Quest79047:OnSubStart7904702(arg1)
    print("OnSubStart7904702")
    this:CreateQuestNpcWithTriggerBlack("Q7904702talk", 7904702, npcs.Npc20986Data.id, 1, 5, 1)
end

function Quest79047:OnSubFinish7904702(arg1)
    print("OnSubFinish7904702")
    this:SafeDestroyQuestNpc(npcs.Npc20986Data.alias, 10)
end

function Quest79047:OnSubStart7904703(arg1)
    print("OnSubStart7904703")
end

function Quest79047:OnSubFinish7904703(arg1)
    print("OnSubFinish7904703")
end

function Quest79047:OnSubStart7904705(arg1)
    print("OnSubStart7904705")
    this:CreateQuestNpcWithTriggerBlack("Q7904705talk", 7904705, npcs.Npc20978Data.id, 0, 35, 1, 0)
end

function Quest79047:OnSubFinish7904705(arg1)
    print("OnSubFinish7904705")
    this:SafeDestroyQuestNpc(npcs.Npc20978Data.alias, 10)
end

function Quest79047:OnSubStart7904706(arg1)
    print("OnSubStart7904706")
end

function Quest79047:OnSubFinish7904706(arg1)
    print("OnSubFinish7904706")
end

function Quest79047:OnSubStart7904707(arg1)
    print("OnSubStart7904707")
    this:CreateQuestNpcWithTriggerBlack("Q7904707talk", 7904707, npcs.Npc20978Data.id, 0, 35, 1, 0)
end

function Quest79047:OnSubFinish7904707(arg1)
    print("OnSubFinish7904707")
    this:SafeDestroyQuestNpc(npcs.Npc20978Data.alias, 10)
end

function Quest79047:OnSubStart7904704(arg1)
    print("OnSubStart7904704")
    this:CreateQuestNpcWithTriggerBlack("Q7904704talk", 7904704, npcs.Npc20978Data.id, 1, 5, 1)
end

function Quest79047:OnSubFinish7904704(arg1)
    print("OnSubFinish7904704")
    this:SafeDestroyQuestNpc(npcs.Npc20978Data.alias, 10)
end

return Quest79047
