require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700602Trigger = class("Q7700602Trigger", GadgetActorProxy)
Q7700602Trigger.defaultAlias = "Q7700602Trigger"
local Q77006ClientConfig = require("Quest/Client/Q77006ClientConfig")

local this
local subIDs = Q77006ClientConfig.SubIDs
local datas = Q77006ClientConfig.Datas
local npcs = Q77006ClientConfig.Npcs
local points = Q77006ClientConfig.Points

function Q7700602Trigger:OnPostDataPrepare()
    print("Q7700602Trigger - OnPostDataPrepare")
    this = self
end

function Q7700602Trigger:OnPostComponentPrepare()
    print("Q7700602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77006)
end

function Q7700602Trigger:TriggerIn()
    print("Q7700602Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700602})
    this:DestroySelf()
end

function Q7700602Trigger:PreTriggerIn()
    print("Q7700602Trigger - PreTriggerIn")
end

function Q7700602Trigger:LightUpTriggerIn()
    print("Q7700602Trigger - LightUpTriggerIn")
end

function Q7700602Trigger:TriggerOut()
    print("Q7700602Trigger - TriggerOut")
end

return Q7700602Trigger
