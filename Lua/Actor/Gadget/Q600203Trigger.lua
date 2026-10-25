require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600203Trigger = class("Q600203Trigger", GadgetActorProxy)
Q600203Trigger.defaultAlias = "Q600203Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600203Trigger:OnPostDataPrepare()
    print("Q600203Trigger - OnPostDataPrepare")
    this = self
end

function Q600203Trigger:OnPostComponentPrepare()
    print("Q600203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600203Trigger:TriggerIn()
    print("Q600203Trigger - TriggerIn")
    actorMgr:GetActor("6002"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("6002"):QuestNarratorTask(datas.NarratorWithId_600201, nil)
    end)

    this:DestroySelf()
end

function Q600203Trigger:PreTriggerIn()
    print("Q600203Trigger - PreTriggerIn")
end

function Q600203Trigger:LightUpTriggerIn()
    print("Q600203Trigger - LightUpTriggerIn")
end

function Q600203Trigger:TriggerOut()
    print("Q600203Trigger - TriggerOut")
end

return Q600203Trigger
