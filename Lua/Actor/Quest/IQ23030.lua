require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23030 = class("Quest23030", QuestActorProxy)
Quest23030.defaultAlias = "Quest23030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303001"] = self.OnSubStart2303001,
        ["2303007"] = self.OnSubStart2303007,
        ["2303002"] = self.OnSubStart2303002,
        ["2303003"] = self.OnSubStart2303003,
        ["2303006"] = self.OnSubStart2303006,
        ["2303004"] = self.OnSubStart2303004,
        ["2303005"] = self.OnSubStart2303005
    }
end

function Quest23030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303001"] = self.OnSubFinish2303001,
        ["2303007"] = self.OnSubFinish2303007,
        ["2303002"] = self.OnSubFinish2303002,
        ["2303003"] = self.OnSubFinish2303003,
        ["2303006"] = self.OnSubFinish2303006,
        ["2303004"] = self.OnSubFinish2303004,
        ["2303005"] = self.OnSubFinish2303005
    }
end

function Quest23030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23030:Start()
    print("Start")
end

function Quest23030:OnDestroy()
    print("OnDestroy")
end

function Quest23030:OnMainFinished(arg1)
    print("OnMainFinished")
    self:LightNotifyTo(npcs.Npc4178Data.alias, 0, true)
end

function Quest23030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12688Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12689Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4178Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4178Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2303004Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2303005Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2303007Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2303002NPCTrigger", 3, false)
end

function Quest23030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23030:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23030:OnSubStart2303001(arg1)
    print("OnSubStart2303001")
    self:CreateQuestNpc(arg1, npcs.Npc12688Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12689Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
end

function Quest23030:OnSubFinish2303001(arg1)
    print("OnSubFinish2303001")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12688Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12689Data.alias)
end

function Quest23030:OnSubStart2303007(arg1)
    print("OnSubStart2303007")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2303007Trigger", "Actor/Gadget/Q2303007Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303002_guide").pos, sceneData:GetDummyPoint(3, "Q2303002_guide").rot, true, false, 3)
end

function Quest23030:OnSubFinish2303007(arg1)
    print("OnSubFinish2303007")
end

function Quest23030:OnSubStart2303002(arg1)
    print("OnSubStart2303002")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("Q2303002NPCTrigger", 2303002, 12688, 1, 15, 1)
end

function Quest23030:OnSubFinish2303002(arg1)
    print("OnSubFinish2303002")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12688Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12689Data.alias)
end

function Quest23030:OnSubStart2303003(arg1)
    print("OnSubStart2303003")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
end

function Quest23030:OnSubFinish2303003(arg1)
    print("OnSubFinish2303003")
end

function Quest23030:OnSubStart2303006(arg1)
    print("OnSubStart2303006")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
end

function Quest23030:OnSubFinish2303006(arg1)
    print("OnSubFinish2303006")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest23030:OnSubStart2303004(arg1)
    print("OnSubStart2303004")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2303004Trigger", "Actor/Gadget/Q2303004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303004_N12688").pos, sceneData:GetDummyPoint(3, "Q2303004_N12688").rot, true, false, 3)
end

function Quest23030:OnSubFinish2303004(arg1)
    print("OnSubFinish2303004")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12688Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12689Data.alias)
end

function Quest23030:OnSubStart2303005(arg1)
    print("OnSubStart2303005")
    self:DailyNpcSafeHideSelf(npcs.Npc4178Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2303005Trigger", "Actor/Gadget/Q2303005Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303005_N4178").pos, sceneData:GetDummyPoint(3, "Q2303005_N4178").rot, true, false, 3)
end

function Quest23030:OnSubFinish2303005(arg1)
    print("OnSubFinish2303005")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12688Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12689Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4178Data.alias)
end

return Quest23030
