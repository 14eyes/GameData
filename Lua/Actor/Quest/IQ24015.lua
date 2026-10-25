require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24015 = class("Quest24015", QuestActorProxy)
Quest24015.defaultAlias = "Quest24015"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24015:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401508"] = self.OnSubStart2401508,
        ["2401501"] = self.OnSubStart2401501,
        ["2401502"] = self.OnSubStart2401502,
        ["2401503"] = self.OnSubStart2401503,
        ["2401504"] = self.OnSubStart2401504,
        ["2401507"] = self.OnSubStart2401507,
        ["2401505"] = self.OnSubStart2401505,
        ["2401506"] = self.OnSubStart2401506
    }
end

function Quest24015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401508"] = self.OnSubFinish2401508,
        ["2401501"] = self.OnSubFinish2401501,
        ["2401502"] = self.OnSubFinish2401502,
        ["2401503"] = self.OnSubFinish2401503,
        ["2401504"] = self.OnSubFinish2401504,
        ["2401507"] = self.OnSubFinish2401507,
        ["2401505"] = self.OnSubFinish2401505,
        ["2401506"] = self.OnSubFinish2401506
    }
end

function Quest24015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24015:Start()
    print("Start")
end

function Quest24015:OnDestroy()
    print("OnDestroy")
end

function Quest24015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24015:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5140Data.alias, 3)
end

function Quest24015:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24015:OnSubStart2401508(arg1)
    print("OnSubStart2401508")
end

function Quest24015:OnSubFinish2401508(arg1)
    print("OnSubFinish2401508")
end

function Quest24015:OnSubStart2401501(arg1)
    print("OnSubStart2401501")
    this:CreateQuestNpc(arg1, npcs.Npc5140Data.id, 0)
end

function Quest24015:OnSubFinish2401501(arg1)
    print("OnSubFinish2401501")
end

function Quest24015:OnSubStart2401502(arg1)
    print("OnSubStart2401502")
end

function Quest24015:OnSubFinish2401502(arg1)
    print("OnSubFinish2401502")
end

function Quest24015:OnSubStart2401503(arg1)
    print("OnSubStart2401503")
end

function Quest24015:OnSubFinish2401503(arg1)
    print("OnSubFinish2401503")
end

function Quest24015:OnSubStart2401504(arg1)
    print("OnSubStart2401504")
    this:CreateQuestNpc(arg1, npcs.Npc5140Data.id, 0)
end

function Quest24015:OnSubFinish2401504(arg1)
    print("OnSubFinish2401504")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5140Data.alias)
end

function Quest24015:OnSubStart2401507(arg1)
    print("OnSubStart2401507")
    this:CreateQuestNpc(arg1, npcs.Npc5140Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5140Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest24015:OnSubFinish2401507(arg1)
    print("OnSubFinish2401507")
end

function Quest24015:OnSubStart2401505(arg1)
    print("OnSubStart2401505")
end

function Quest24015:OnSubFinish2401505(arg1)
    print("OnSubFinish2401505")
end

function Quest24015:OnSubStart2401506(arg1)
    print("OnSubStart2401506")
    this:CreateQuestNpc(arg1, npcs.Npc5140Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5140Data.alias):DoFreeStyle(1260, true, nil, true, true, false, false)
end

function Quest24015:OnSubFinish2401506(arg1)
    print("OnSubFinish2401506")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5140Data.alias)
end

return Quest24015
