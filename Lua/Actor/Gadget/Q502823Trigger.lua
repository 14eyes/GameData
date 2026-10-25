require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502823Trigger = class("Q502823Trigger", GadgetActorProxy)
Q502823Trigger.defaultAlias = "Q502823Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502823Trigger:OnPostDataPrepare()
    print("Q502823Trigger - OnPostDataPrepare")
    this = self
end

function Q502823Trigger:OnPostComponentPrepare()
    print("Q502823Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502823Trigger:TriggerIn()
    print("Q502823Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502823)
    this:DestroySelf()
end

function Q502823Trigger:PreTriggerIn()
    print("Q502823Trigger - PreTriggerIn")
end

function Q502823Trigger:LightUpTriggerIn()
    print("Q502823Trigger - LightUpTriggerIn")
end

function Q502823Trigger:TriggerOut()
    print("Q502823Trigger - TriggerOut")
end

return Q502823Trigger
