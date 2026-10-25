require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905901Trigger = class("Q1905901Trigger", GadgetActorProxy)
Q1905901Trigger.defaultAlias = "Q1905901Trigger"
local Q19059ClientConfig = require("Quest/Client/Q19059ClientConfig")

local this
local subIDs = Q19059ClientConfig.SubIDs
local npcs = Q19059ClientConfig.Npcs
local points = Q19059ClientConfig.Points
local datas = Q19059ClientConfig.Datas

function Q1905901Trigger:OnPostDataPrepare()
    print("[MainId: 19059][Trigger: Q1905901Trigger] OnPostDataPrepare")
    this = self
end

function Q1905901Trigger:OnPostComponentPrepare()
    print("[MainId: 19059][Trigger: Q1905901Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(28.67227, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1905901Trigger:TriggerIn()
    print("[MainId: 19059][Trigger: Q1905901Trigger] TriggerIn")
    local actor = actorMgr:GetActor("19059")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13235Data.alias, 19059)
    actor:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData_Wander1, function(arg1)
        actorMgr:GetActor("19059"):GetQuestNpcActor(npcs.Npc13235Data.alias, 19059):DoFreeStyle(1190, true, nil, true, true, true, false)
    end)

    this:DestroySelf()
end

function Q1905901Trigger:PreTriggerIn()
    print("[MainId: 19059][Trigger: Q1905901Trigger] PreTriggerIn")
end

function Q1905901Trigger:LightUpTriggerIn()
    print("[MainId: 19059][Trigger: Q1905901Trigger] LightUpTriggerIn")
end

function Q1905901Trigger:TriggerOut()
    print("[MainId: 19059][Trigger: Q1905901Trigger] TriggerOut")
end

return Q1905901Trigger
