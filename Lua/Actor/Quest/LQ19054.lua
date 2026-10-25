require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19054 = class("Quest19054", QuestActorProxy)
Quest19054.defaultAlias = "Quest19054"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest19054:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest19054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905401"] = self.OnSubStart1905401,
        ["1905402"] = self.OnSubStart1905402,
        ["1905404"] = self.OnSubStart1905404,
        ["1905408"] = self.OnSubStart1905408,
        ["1905410"] = self.OnSubStart1905410,
        ["1905405"] = self.OnSubStart1905405,
        ["1905406"] = self.OnSubStart1905406,
        ["1905407"] = self.OnSubStart1905407,
        ["1905409"] = self.OnSubStart1905409
    }
end

function Quest19054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905401"] = self.OnSubFinish1905401,
        ["1905402"] = self.OnSubFinish1905402,
        ["1905404"] = self.OnSubFinish1905404,
        ["1905408"] = self.OnSubFinish1905408,
        ["1905410"] = self.OnSubFinish1905410,
        ["1905405"] = self.OnSubFinish1905405,
        ["1905406"] = self.OnSubFinish1905406,
        ["1905407"] = self.OnSubFinish1905407,
        ["1905409"] = self.OnSubFinish1905409
    }
end

function Quest19054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1905409"] = self.OnSubFailed1905409}
end

function Quest19054:Start()
    print("Start")
end

function Quest19054:OnDestroy()
    print("OnDestroy")
end

function Quest19054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19054:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12221Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12222Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12223Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12224Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12225Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12226Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2304Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2138Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2310Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2300Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2307Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12422Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2304Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2138Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2310Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2300Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2307Data.alias, 0, true)
    actorMgr:GetActor("19054"):UnSpawn(gadgets.Gadget70710561Data.alias)
    actorMgr:DestroyEntityActor("Q1905401Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905404Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905405Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905406Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905408Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905409Trigger", 3, false)
end

function Quest19054:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19054:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19054:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest19054:OnSubStart1905401(arg1)
    print("OnSubStart1905401")
    self:CreateQuestNpc(arg1, npcs.Npc12221Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12222Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 5)
    actorMgr:CreateActorWithPos("Q1905401Trigger", "Actor/Gadget/Q1905401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101QingCe02").pos, sceneData:GetDummyPoint(3, "COOP10240101QingCe02").rot, true, false, 3)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905401)
end

function Quest19054:OnSubFinish1905401(arg1)
    print("OnSubFinish1905401")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12221Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12222Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12223Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
end

function Quest19054:OnSubStart1905402(arg1)
    print("OnSubStart1905402")
    self:CreateQuestNpc(arg1, npcs.Npc12224Data.id, 5)
    self:DailyNpcSafeHideSelf(npcs.Npc2300Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2307Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905402)
end

function Quest19054:OnSubFinish1905402(arg1)
    print("OnSubFinish1905402")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12223Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12224Data.alias, 3)
end

function Quest19054:OnSubStart1905404(arg1)
    print("OnSubStart1905404")
    self:CreateQuestNpc(arg1, npcs.Npc12225Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12226Data.id, 6)
    self:LightNotifyTo(npcs.Npc2300Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2307Data.alias, 0, true)
    self:UnSpawn(gadgets.Gadget70710561Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710561Data.id, 1, 0)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905404)
    actorMgr:CreateActorWithPos("Q1905404Trigger", "Actor/Gadget/Q1905404Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101BaoXiang01").pos, sceneData:GetDummyPoint(3, "COOP10240101BaoXiang01").rot, true, false, 3)
end

function Quest19054:OnSubFinish1905404(arg1)
    print("OnSubFinish1905404")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12225Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12226Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710561Data.alias)
end

function Quest19054:OnSubStart1905408(arg1)
    print("OnSubStart1905408")
    actorMgr:CreateActorWithPos("Q1905408Trigger", "Actor/Gadget/Q1905408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou18").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou18").rot, true, false, 3)
end

function Quest19054:OnSubFinish1905408(arg1)
    print("OnSubFinish1905408")
end

function Quest19054:OnSubStart1905410(arg1)
    print("OnSubStart1905410")
    self:GetQuestNpcActor(npcs.Npc12224Data.alias):DoFreeStyle(1090, true, nil, true, true, false)
end

function Quest19054:OnSubFinish1905410(arg1)
    print("OnSubFinish1905410")
end

function Quest19054:OnSubStart1905405(arg1)
    print("OnSubStart1905405")
    self:CreateQuestNpc(arg1, npcs.Npc12221Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12222Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12224Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12225Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12226Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12226Data.alias):DoFreeStyle(1171, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 7)
    self:DailyNpcSafeHideSelf(npcs.Npc2304Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2138Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2310Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget70710561Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710561Data.id, 1, 0)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905405)
    actorMgr:CreateActorWithPos("Q1905405Trigger", "Actor/Gadget/Q1905405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101YanHui04").pos, sceneData:GetDummyPoint(3, "COOP10240101YanHui04").rot, true, false, 3)
end

function Quest19054:OnSubFinish1905405(arg1)
    print("OnSubFinish1905405")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
end

function Quest19054:OnSubStart1905406(arg1)
    print("OnSubStart1905406")
    self:CreateQuestNpc(arg1, npcs.Npc12221Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12222Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12224Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12225Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12226Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 7)
    self:DailyNpcSafeHideSelf(npcs.Npc2304Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2138Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2310Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12422Data.id, 8)
    actorMgr:CreateActorWithPos("Q1905406Trigger", "Actor/Gadget/Q1905406Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou22").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou22").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12224Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12225Data.alias):SitOnChair(0)
end

function Quest19054:OnSubFinish1905406(arg1)
    print("OnSubFinish1905406")
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905406)
end

function Quest19054:OnSubStart1905407(arg1)
    print("OnSubStart1905407")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_BeidouData.id, 1, npcs.Coop_BeidouData.alias)
    self:LightNotifyTo(npcs.Npc2304Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2138Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2310Data.alias, 0, true)
    self:UnSpawn(gadgets.Gadget70710561Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710561Data.id, 1, 0)
end

function Quest19054:OnSubFinish1905407(arg1)
    print("OnSubFinish1905407")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12221Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12222Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12224Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12225Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12226Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12422Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710561Data.alias)
end

function Quest19054:OnSubStart1905409(arg1)
    print("OnSubStart1905409")
    actorMgr:CreateActorWithPos("Q1905409Trigger", "Actor/Gadget/Q1905409Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou18").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou18").rot, true, false, 3)
end

function Quest19054:OnSubFinish1905409(arg1)
    print("OnSubFinish1905409")
    self:ActorDestroy("Q1905409Trigger")
end

function Quest19054:OnSubFailed1905409(arg1)
    print("OnSubFailed1905409")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12221Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12222Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12224Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12225Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12226Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710561Data.alias)
    self:RemoveCoopInteractionData(102401)
    self:ActorDestroy("Q1905405Trigger")
    self:ActorDestroy("Q1905406Trigger")
end

return Quest19054
