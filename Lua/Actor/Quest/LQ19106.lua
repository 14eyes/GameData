require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19106 = class("Quest19106", QuestActorProxy)
Quest19106.defaultAlias = "Quest19106"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19106:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1910601"] = self.OnSubStart1910601,
        ["1910602"] = self.OnSubStart1910602,
        ["1910603"] = self.OnSubStart1910603,
        ["1910604"] = self.OnSubStart1910604,
        ["1910605"] = self.OnSubStart1910605,
        ["1910606"] = self.OnSubStart1910606,
        ["1910607"] = self.OnSubStart1910607,
        ["1910608"] = self.OnSubStart1910608,
        ["1910609"] = self.OnSubStart1910609
    }
end

function Quest19106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1910601"] = self.OnSubFinish1910601,
        ["1910602"] = self.OnSubFinish1910602,
        ["1910603"] = self.OnSubFinish1910603,
        ["1910604"] = self.OnSubFinish1910604,
        ["1910605"] = self.OnSubFinish1910605,
        ["1910606"] = self.OnSubFinish1910606,
        ["1910607"] = self.OnSubFinish1910607,
        ["1910608"] = self.OnSubFinish1910608,
        ["1910609"] = self.OnSubFinish1910609
    }
end

function Quest19106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1910601"] = self.OnSubFailed1910601,
        ["1910602"] = self.OnSubFailed1910602,
        ["1910603"] = self.OnSubFailed1910603,
        ["1910604"] = self.OnSubFailed1910604,
        ["1910605"] = self.OnSubFailed1910605,
        ["1910606"] = self.OnSubFailed1910606,
        ["1910607"] = self.OnSubFailed1910607,
        ["1910608"] = self.OnSubFailed1910608,
        ["1910609"] = self.OnSubFailed1910609
    }
end

function Quest19106:Start()
    print("Start")
end

function Quest19106:OnDestroy()
    print("OnDestroy")
end

function Quest19106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19106:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1423Data.alias, 3)
    self:ActorDestroy("Q1910602Trigger")
    self:ActorDestroy("Q1910605Trigger")
end

function Quest19106:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19106:OnSubStart1910601(arg1)
    print("OnSubStart1910601")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1423Data.id, 2)
    self:NotifyTo(npcs.Npc1463Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910601)
end

function Quest19106:OnSubFinish1910601(arg1)
    print("OnSubFinish1910601")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1423Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
end

function Quest19106:OnSubFailed1910601(arg1)
    print("OnSubFailed1910601")
end

function Quest19106:OnSubStart1910602(arg1)
    print("OnSubStart1910602")
    actorMgr:CreateActorWithPos("Q1910602Trigger", "Actor/Gadget/Q1910602Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona11").pos, sceneData:GetDummyPoint(3, "COOP103901Diona11").rot, true, false)
end

function Quest19106:OnSubFinish1910602(arg1)
    print("OnSubFinish1910602")
end

function Quest19106:OnSubFailed1910602(arg1)
    print("OnSubFailed1910602")
end

function Quest19106:OnSubStart1910603(arg1)
    print("OnSubStart1910603")
    self:ShowBlackScreen(0.3, 0.5, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(103901, 1910602)
        arg1_2:RequestInteraction(npcs.Coop_DionaData.alias)
    end, nil, nil, "")
end

function Quest19106:OnSubFinish1910603(arg1)
    print("OnSubFinish1910603")
end

function Quest19106:OnSubFailed1910603(arg1)
    print("OnSubFailed1910603")
end

function Quest19106:OnSubStart1910604(arg1)
    print("OnSubStart1910604")
end

function Quest19106:OnSubFinish1910604(arg1)
    print("OnSubFinish1910604")
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910603)
    self:RequestInteraction(npcs.Coop_DionaData.alias)
end

function Quest19106:OnSubFailed1910604(arg1)
    print("OnSubFailed1910604")
end

function Quest19106:OnSubStart1910605(arg1)
    print("OnSubStart1910605")
    actorMgr:CreateActorWithPos("Q1910605Trigger", "Actor/Gadget/Q1910605Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona12").pos, sceneData:GetDummyPoint(3, "COOP103901Diona12").rot, true, false)
end

function Quest19106:OnSubFinish1910605(arg1)
    print("OnSubFinish1910605")
end

function Quest19106:OnSubFailed1910605(arg1)
    print("OnSubFailed1910605")
end

function Quest19106:OnSubStart1910606(arg1)
    print("OnSubStart1910606")
    self:ShowBlackScreen(0.3, 0.5, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(103901, 1910604)
        arg1_2:RequestInteraction(npcs.Coop_DionaData.alias)
    end, nil, nil, "")
end

function Quest19106:OnSubFinish1910606(arg1)
    print("OnSubFinish1910606")
end

function Quest19106:OnSubFailed1910606(arg1)
    print("OnSubFailed1910606")
end

function Quest19106:OnSubStart1910607(arg1)
    print("OnSubStart1910607")
end

function Quest19106:OnSubFinish1910607(arg1)
    print("OnSubFinish1910607")
end

function Quest19106:OnSubFailed1910607(arg1)
    print("OnSubFailed1910607")
end

function Quest19106:OnSubStart1910608(arg1)
    print("OnSubStart1910608")
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910605)
    self:RequestInteraction(npcs.Coop_DionaData.alias)
end

function Quest19106:OnSubFinish1910608(arg1)
    print("OnSubFinish1910608")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
end

function Quest19106:OnSubFailed1910608(arg1)
    print("OnSubFailed1910608")
end

function Quest19106:OnSubStart1910609(arg1)
    print("OnSubStart1910609")
end

function Quest19106:OnSubFinish1910609(arg1)
    print("OnSubFinish1910609")
end

function Quest19106:OnSubFailed1910609(arg1)
    print("OnSubFailed1910609")
end

return Quest19106
