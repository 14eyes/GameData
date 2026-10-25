require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411618Trigger = class("Q7411618Trigger", GadgetActorProxy)
Q7411618Trigger.defaultAlias = "Q7411618Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411618Trigger:OnPostDataPrepare()
    print("Q7411618Trigger - OnPostDataPrepare")
    this = self
end

function Q7411618Trigger:OnPostComponentPrepare()
    print("Q7411618Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411618Trigger:TriggerIn()
    print("Q7411618Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411618)
    this:DestroySelf()
end

function Q7411618Trigger:PreTriggerIn()
    print("Q7411618Trigger - PreTriggerIn")
end

function Q7411618Trigger:LightUpTriggerIn()
    print("Q7411618Trigger - LightUpTriggerIn")
end

function Q7411618Trigger:TriggerOut()
    print("Q7411618Trigger - TriggerOut")
end

return Q7411618Trigger
