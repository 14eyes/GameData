require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411615Trigger = class("Q7411615Trigger", GadgetActorProxy)
Q7411615Trigger.defaultAlias = "Q7411615Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411615Trigger:OnPostDataPrepare()
    print("Q7411615Trigger - OnPostDataPrepare")
    this = self
end

function Q7411615Trigger:OnPostComponentPrepare()
    print("Q7411615Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411615Trigger:TriggerIn()
    print("Q7411615Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411615)
    this:DestroySelf()
end

function Q7411615Trigger:PreTriggerIn()
    print("Q7411615Trigger - PreTriggerIn")
end

function Q7411615Trigger:LightUpTriggerIn()
    print("Q7411615Trigger - LightUpTriggerIn")
end

function Q7411615Trigger:TriggerOut()
    print("Q7411615Trigger - TriggerOut")
end

return Q7411615Trigger
