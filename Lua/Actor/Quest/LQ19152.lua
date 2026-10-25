require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19152 = class("Quest19152", QuestActorProxy)
Quest19152.defaultAlias = "Quest19152"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19152:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19152:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915201"] = self.OnSubStart1915201,
        ["1915202"] = self.OnSubStart1915202,
        ["1915203"] = self.OnSubStart1915203,
        ["1915204"] = self.OnSubStart1915204
    }
end

function Quest19152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915201"] = self.OnSubFinish1915201,
        ["1915202"] = self.OnSubFinish1915202,
        ["1915203"] = self.OnSubFinish1915203,
        ["1915204"] = self.OnSubFinish1915204
    }
end

function Quest19152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19152:Start()
    print("Start")
end

function Quest19152:OnDestroy()
    print("OnDestroy")
end

function Quest19152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19152:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc12908Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc4385Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc4380Data.alias, 1073)
end

function Quest19152:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19152:OnSubStart1915201(arg1)
    print("OnSubStart1915201")
    this:CreateQuestNpc(arg1, npcs.Npc4385Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc4385Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915201)
end

function Quest19152:OnSubFinish1915201(arg1)
    print("OnSubFinish1915201")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
end

function Quest19152:OnSubStart1915202(arg1)
    print("OnSubStart1915202")
    this:CreateQuestNpc(arg1, npcs.Npc4380Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4380Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915202)
end

function Quest19152:OnSubFinish1915202(arg1)
    print("OnSubFinish1915202")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
end

function Quest19152:OnSubStart1915203(arg1)
    print("OnSubStart1915203")
    this:CreateQuestNpc(arg1, npcs.Npc12908Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc12908Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915203)
end

function Quest19152:OnSubFinish1915203(arg1)
    print("OnSubFinish1915203")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
end

function Quest19152:OnSubStart1915204(arg1)
    print("OnSubStart1915204")
    this:CreateQuestNpc(arg1, npcs.Npc12908Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc12908Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc4385Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc4385Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc4380Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4380Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19152:OnSubFinish1915204(arg1)
    print("OnSubFinish1915204")
    this:NpcDestroy(npcs.Npc12908Data.alias, 1073)
    this:NpcDestroy(npcs.Npc4385Data.alias, 1073)
    this:NpcDestroy(npcs.Npc4380Data.alias, 1073)
end

return Quest19152
