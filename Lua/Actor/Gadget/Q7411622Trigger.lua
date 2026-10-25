require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411622Trigger = class("Q7411622Trigger", GadgetActorProxy)
Q7411622Trigger.defaultAlias = "Q7411622Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411622Trigger:OnPostDataPrepare()
    print("Q7411622Trigger - OnPostDataPrepare")
    this = self
end

function Q7411622Trigger:OnPostComponentPrepare()
    print("Q7411622Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411622Trigger:TriggerIn()
    print("Q7411622Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411622)
    this:DestroySelf()
end

function Q7411622Trigger:PreTriggerIn()
    print("Q7411622Trigger - PreTriggerIn")
end

function Q7411622Trigger:LightUpTriggerIn()
    print("Q7411622Trigger - LightUpTriggerIn")
end

function Q7411622Trigger:TriggerOut()
    print("Q7411622Trigger - TriggerOut")
end

return Q7411622Trigger
