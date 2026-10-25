require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22016 = class("Quest22016", QuestActorProxy)
Quest22016.defaultAlias = "Quest22016"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201601"] = self.OnSubStart2201601,
        ["2201602"] = self.OnSubStart2201602,
        ["2201603"] = self.OnSubStart2201603,
        ["2201604"] = self.OnSubStart2201604,
        ["2201605"] = self.OnSubStart2201605,
        ["2201606"] = self.OnSubStart2201606,
        ["2201609"] = self.OnSubStart2201609,
        ["2201607"] = self.OnSubStart2201607,
        ["2201608"] = self.OnSubStart2201608
    }
end

function Quest22016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201601"] = self.OnSubFinish2201601,
        ["2201602"] = self.OnSubFinish2201602,
        ["2201603"] = self.OnSubFinish2201603,
        ["2201604"] = self.OnSubFinish2201604,
        ["2201605"] = self.OnSubFinish2201605,
        ["2201606"] = self.OnSubFinish2201606,
        ["2201609"] = self.OnSubFinish2201609,
        ["2201607"] = self.OnSubFinish2201607,
        ["2201608"] = self.OnSubFinish2201608
    }
end

function Quest22016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201601"] = self.OnSubFailed2201601,
        ["2201602"] = self.OnSubFailed2201602,
        ["2201603"] = self.OnSubFailed2201603,
        ["2201604"] = self.OnSubFailed2201604,
        ["2201605"] = self.OnSubFailed2201605,
        ["2201606"] = self.OnSubFailed2201606,
        ["2201609"] = self.OnSubFailed2201609,
        ["2201607"] = self.OnSubFailed2201607,
        ["2201608"] = self.OnSubFailed2201608
    }
end

function Quest22016:Start()
    print("Start")
end

function Quest22016:OnDestroy()
    print("OnDestroy")
end

function Quest22016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest22016:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22016:NotifyToTarget()
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest22016:RequestInteraction()
    self:RequestInteractionForceAlias(npcs.Npc20269Data.alias)
end

function Quest22016:OnSubStart2201601(arg1)
    print("OnSubStart2201601")
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest22016:OnSubFinish2201601(arg1)
    print("OnSubFinish2201601")
    self:ShowBlackScreen(0.5, 1, 0.5, self.NotifyToTarget, nil, nil, "")
end

function Quest22016:OnSubFailed2201601(arg1)
    print("OnSubFailed2201601")
end

function Quest22016:OnSubStart2201602(arg1)
    print("OnSubStart2201602")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q22016Trigger2", "Actor/Gadget/Q22016Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q22016_01").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest22016:OnSubFinish2201602(arg1)
    print("OnSubFinish2201602")
end

function Quest22016:OnSubFailed2201602(arg1)
    print("OnSubFailed2201602")
end

function Quest22016:OnSubStart2201603(arg1)
    print("OnSubStart2201603")
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest22016:OnSubFinish2201603(arg1)
    print("OnSubFinish2201603")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20268Data.alias)
end

function Quest22016:OnSubFailed2201603(arg1)
    print("OnSubFailed2201603")
end

function Quest22016:OnSubStart2201604(arg1)
    print("OnSubStart2201604")
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 1)
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc20269Data.alias):DoFreeStyle(4190, true, nil, true, true)
    actorMgr:CreateActorWithPos("Q22016Trigger", "Actor/Gadget/Q22016Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q22016_04").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest22016:OnSubFinish2201604(arg1)
    print("OnSubFinish2201604")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest22016:OnSubFailed2201604(arg1)
    print("OnSubFailed2201604")
end

function Quest22016:OnSubStart2201605(arg1)
    print("OnSubStart2201605")
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc20269Data.alias):DoFreeStyle(4190, true, nil, true, true)
end

function Quest22016:OnSubFinish2201605(arg1)
    print("OnSubFinish2201605")
end

function Quest22016:OnSubFailed2201605(arg1)
    print("OnSubFailed2201605")
end

function Quest22016:OnSubStart2201606(arg1)
    print("OnSubStart2201606")
end

function Quest22016:OnSubFinish2201606(arg1)
    print("OnSubFinish2201606")
end

function Quest22016:OnSubFailed2201606(arg1)
    print("OnSubFailed2201606")
end

function Quest22016:OnSubStart2201609(arg1)
    print("OnSubStart2201609")
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc20269Data.alias):DoFreeStyle(1300, true, nil, true, true)
end

function Quest22016:OnSubFinish2201609(arg1)
    print("OnSubFinish2201609")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20269Data.alias)
end

function Quest22016:OnSubFailed2201609(arg1)
    print("OnSubFailed2201609")
end

function Quest22016:OnSubStart2201607(arg1)
    print("OnSubStart2201607")
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20271Data.alias):DoFreeStyle(4050, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q22016Trigger1", "Actor/Gadget/Q22016Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q22016_17").pos, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest22016:OnSubFinish2201607(arg1)
    print("OnSubFinish2201607")
end

function Quest22016:OnSubFailed2201607(arg1)
    print("OnSubFailed2201607")
end

function Quest22016:OnSubStart2201608(arg1)
    print("OnSubStart2201608")
    self:NotifyTo(npcs.Npc20270Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc20271Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest22016:OnSubFinish2201608(arg1)
    print("OnSubFinish2201608")
end

function Quest22016:OnSubFailed2201608(arg1)
    print("OnSubFailed2201608")
end

return Quest22016
