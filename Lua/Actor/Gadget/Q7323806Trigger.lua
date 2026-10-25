require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323806Trigger = class("Q7323806Trigger", GadgetActorProxy)
Q7323806Trigger.defaultAlias = "Q7323806Trigger"
local Q73238ClientConfig = require("Quest/Client/Q73238ClientConfig")

local this
local subIDs = Q73238ClientConfig.SubIDs
local npcs = Q73238ClientConfig.Npcs
local points = Q73238ClientConfig.Points
local datas = Q73238ClientConfig.Datas

function Q7323806Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323806Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323806Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73238")
    actor:EnterSceneLookCamera({x = 58.0, y = 240.0, z = 6157.0}, 0, 2, false, false)
    actor:CallDelay(1, function(arg1)
        actorMgr:GetActor("73238"):NarratorOnlyTaskByData(datas.Narrator_732389903)
        this:DestroySelf()
    end)
end

function Q7323806Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323806Trigger
