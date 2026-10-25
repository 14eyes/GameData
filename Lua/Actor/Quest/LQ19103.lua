require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19103 = class("Quest19103", QuestActorProxy)
Quest19103.defaultAlias = "Quest19103"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19103:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1910301"] = self.OnSubStart1910301,
        ["1910302"] = self.OnSubStart1910302,
        ["1910303"] = self.OnSubStart1910303,
        ["1910304"] = self.OnSubStart1910304,
        ["1910305"] = self.OnSubStart1910305,
        ["1910306"] = self.OnSubStart1910306
    }
end

function Quest19103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1910301"] = self.OnSubFinish1910301,
        ["1910302"] = self.OnSubFinish1910302,
        ["1910303"] = self.OnSubFinish1910303,
        ["1910304"] = self.OnSubFinish1910304,
        ["1910305"] = self.OnSubFinish1910305,
        ["1910306"] = self.OnSubFinish1910306
    }
end

function Quest19103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1910301"] = self.OnSubFailed1910301,
        ["1910302"] = self.OnSubFailed1910302,
        ["1910303"] = self.OnSubFailed1910303,
        ["1910304"] = self.OnSubFailed1910304,
        ["1910305"] = self.OnSubFailed1910305,
        ["1910306"] = self.OnSubFailed1910306
    }
end

function Quest19103:Start()
    print("Start")
end

function Quest19103:OnDestroy()
    print("OnDestroy")
end

function Quest19103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19103:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1539Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc153901Data.alias, 3)
    self:ActorDestroy("Q1910302Trigger")
    self:ActorDestroy("Q1910303Trigger")
    self:ActorDestroy("Q1910305Trigger")
end

function Quest19103:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19103:OnSubStart1910301(arg1)
    print("OnSubStart1910301")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:ShowBlackScreen(0.5, 2, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(103901, 1910301)
    end, nil, nil, "")
end

function Quest19103:OnSubFinish1910301(arg1)
    print("OnSubFinish1910301")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
end

function Quest19103:OnSubFailed1910301(arg1)
    print("OnSubFailed1910301")
end

function Quest19103:OnSubStart1910302(arg1)
    print("OnSubStart1910302")
    self:CreateQuestNpc(arg1, npcs.Npc153901Data.id, 2)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910302Trigger", "Actor/Gadget/Q1910302Trigger", 70900002, 0, {x = 1489.867, y = 239.6567, z = -1402.325}, {x = 0, y = 0, z = 0}, true, false)
    self:CallDelay(0.5, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Q1910302NarratorWithId)
    end)

    self:GetQuestNpcActor(npcs.Npc153901Data.alias):DoFreeStyle(1200, true, nil, true, true)
end

function Quest19103:OnSubFinish1910302(arg1)
    print("OnSubFinish1910302")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "COOP103901Allan01_01").pos, 0, 3, true, true)
    self:NarratorOnlyTaskByData(datas.Q1910303NarratorWithId)
end

function Quest19103:OnSubFailed1910302(arg1)
    print("OnSubFailed1910302")
end

function Quest19103:OnSubStart1910303(arg1)
    print("OnSubStart1910303")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910303Trigger", "Actor/Gadget/Q1910303Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Allan01_01").pos, sceneData:GetDummyPoint(3, "COOP103901Allan01_01").rot, true, false, 3)
end

function Quest19103:OnSubFinish1910303(arg1)
    print("OnSubFinish1910303")
end

function Quest19103:OnSubFailed1910303(arg1)
    print("OnSubFailed1910303")
end

function Quest19103:OnSubStart1910304(arg1)
    print("OnSubStart1910304")
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc153901Data.alias):DoFreeStateTrigger()
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910302)
    self:RequestInteraction(npcs.Npc153901Data.alias)
end

function Quest19103:OnSubFinish1910304(arg1)
    print("OnSubFinish1910304")
end

function Quest19103:OnSubFailed1910304(arg1)
    print("OnSubFailed1910304")
end

function Quest19103:OnSubStart1910305(arg1)
    print("OnSubStart1910305")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:NotifyTo(npcs.Npc1539Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910305Trigger", "Actor/Gadget/Q1910305Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona09").pos, sceneData:GetDummyPoint(3, "COOP103901Diona09").rot, true, false)
end

function Quest19103:OnSubFinish1910305(arg1)
    print("OnSubFinish1910305")
end

function Quest19103:OnSubFailed1910305(arg1)
    print("OnSubFailed1910305")
end

function Quest19103:OnSubStart1910306(arg1)
    print("OnSubStart1910306")
    self:FinishQuestID(false, 1910306)
end

function Quest19103:OnSubFinish1910306(arg1)
    print("OnSubFinish1910306")
end

function Quest19103:OnSubFailed1910306(arg1)
    print("OnSubFailed1910306")
end

return Quest19103
