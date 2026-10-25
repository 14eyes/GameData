require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411603Trigger = class("Q7411603Trigger", GadgetActorProxy)
Q7411603Trigger.defaultAlias = "Q7411603Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411603Trigger:OnPostDataPrepare()
    print("Q7411603Trigger - OnPostDataPrepare")
    this = self
end

function Q7411603Trigger:OnPostComponentPrepare()
    print("Q7411603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411603Trigger:TriggerIn()
    print("Q7411603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411603)
    this:DestroySelf()
end

function Q7411603Trigger:PreTriggerIn()
    print("Q7411603Trigger - PreTriggerIn")
end

function Q7411603Trigger:LightUpTriggerIn()
    print("Q7411603Trigger - LightUpTriggerIn")
end

function Q7411603Trigger:TriggerOut()
    print("Q7411603Trigger - TriggerOut")
end

return Q7411603Trigger
