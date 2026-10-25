require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714801Trigger = class("Q7714801Trigger", GadgetActorProxy)
Q7714801Trigger.defaultAlias = "Q7714801Trigger"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714801Trigger:OnPostDataPrepare()
    print("Q7714801Trigger - OnPostDataPrepare")
    this = self
end

function Q7714801Trigger:OnPostComponentPrepare()
    print("Q7714801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714801Trigger:TriggerIn()
    print("Q7714801Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7714801})
    this:DestroySelf()
end

function Q7714801Trigger:PreTriggerIn()
    print("Q7714801Trigger - PreTriggerIn")
end

function Q7714801Trigger:LightUpTriggerIn()
    print("Q7714801Trigger - LightUpTriggerIn")
end

function Q7714801Trigger:TriggerOut()
    print("Q7714801Trigger - TriggerOut")
end

return Q7714801Trigger
