require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19103Trigger = class("Q19103Trigger", GadgetActorProxy)
Q19103Trigger.defaultAlias = "Q19103Trigger"
local Q19103ClientConfig = require("Quest/Client/Q19103ClientConfig")

local subIDs = Q19103ClientConfig.SubIDs
local npcs = Q19103ClientConfig.Npcs
local datas = Q19103ClientConfig.Datas

function Q1910302Trigger_BeFollowFinish.OnPostDataPrepare(arg1)
    print("OnPostDataPrepare")
end

function Q1910302Trigger_BeFollowFinish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910302Trigger_BeFollowFinish:TriggerIn()
    print("TriggerIn")
    self:GetQuestNpcActor(npcs.Npc153901Data.alias):DoFreeStyle(1200, true, nil, true, true)
    actorMgr:GetActor("19103"):EnterSceneLookCamera(sceneData:GetDummyPoint(3, "COOP103901Allan01_01").pos, 0, 3, true, false)
    self:GetQuestNpcActor(npcs.Coop_DionaData.alias):RunToRouteTask(datas.RoutePointsData191030202, self.TriggerOut)
end

function Q1910302Trigger_BeFollowFinish.TriggerOut(arg1)
    print("TriggerOut")
    actorMgr:GetActor("19103"):FinishQuestID(false, 1910302)
end

return Q19103Trigger
