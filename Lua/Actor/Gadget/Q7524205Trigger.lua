require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524205Trigger = class("Q7524205Trigger", GadgetActorProxy)
Q7524205Trigger.defaultAlias = "Q7524205Trigger"
local Q75242ClientConfig = require("Quest/Client/Q75242ClientConfig")

local this
local subIDs = Q75242ClientConfig.SubIDs
local datas = Q75242ClientConfig.Datas
local npcs = Q75242ClientConfig.Npcs
local points = Q75242ClientConfig.Points

function Q7524205Trigger:OnPostDataPrepare()
    print("Q7524205Trigger - OnPostDataPrepare")
    this = self
end

function Q7524205Trigger:OnPostComponentPrepare()
    print("Q7524205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75242)
end

function Q7524205Trigger:TriggerIn()
    print("Q7524205Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7524205)
end

function Q7524205Trigger:PreTriggerIn()
    print("Q7524205Trigger - PreTriggerIn")
end

function Q7524205Trigger:LightUpTriggerIn()
    print("Q7524205Trigger - LightUpTriggerIn")
end

function Q7524205Trigger:TriggerOut()
    print("Q7524205Trigger - TriggerOut")
end

return Q7524205Trigger
