require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40086 = class("Quest40086", QuestActorProxy)
Quest40086.defaultAlias = "Quest40086"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40086:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40086:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008604"] = self.OnSubStart4008604,
        ["4008601"] = self.OnSubStart4008601,
        ["4008602"] = self.OnSubStart4008602,
        ["4008603"] = self.OnSubStart4008603
    }
end

function Quest40086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008604"] = self.OnSubFinish4008604,
        ["4008601"] = self.OnSubFinish4008601,
        ["4008602"] = self.OnSubFinish4008602,
        ["4008603"] = self.OnSubFinish4008603
    }
end

function Quest40086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40086:Start()
    print("Start")
end

function Quest40086:OnDestroy()
    print("OnDestroy")
end

function Quest40086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40086:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12855Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4008601Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008602Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4008603Trigger", 3, false)
end

function Quest40086:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40086:OnSubStart4008604(arg1)
    print("OnSubStart4008604")
end

function Quest40086:OnSubFinish4008604(arg1)
    print("OnSubFinish4008604")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 40086)
end

function Quest40086:OnSubStart4008601(arg1)
    print("OnSubStart4008601")
    self:CreateQuestNpcWithTriggerBlack("Q4008601Trigger", 4008601, npcs.Npc1063Data.id, 0, 10, 0.5)
end

function Quest40086:OnSubFinish4008601(arg1)
    print("OnSubFinish4008601")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1063Data.alias)
    self:ClearNarratorTask()
end

function Quest40086:OnSubStart4008602(arg1)
    print("OnSubStart4008602")
    self:CreateQuestNpcWithTriggerBlack("Q4008602Trigger", 4008602, npcs.Npc1034Data.id, 0, 10, 0.5)
end

function Quest40086:OnSubFinish4008602(arg1)
    print("OnSubFinish4008602")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1034Data.alias)
end

function Quest40086:OnSubStart4008603(arg1)
    print("OnSubStart4008603")
    self:CreateQuestNpcWithTriggerBlack("Q4008603Trigger", 4008603, npcs.Npc12855Data.id, 0, 10, 0.5)
end

function Quest40086:OnSubFinish4008603(arg1)
    print("OnSubFinish4008603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12855Data.alias)
end

return Quest40086
