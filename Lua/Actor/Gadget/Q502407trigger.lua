require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502407trigger = class("Q502407trigger", GadgetActorProxy)
Q502407trigger.defaultAlias = "Q502407trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502407trigger:OnPostDataPrepare()
    print("Q502407trigger - OnPostDataPrepare")
    this = self
end

function Q502407trigger:OnPostComponentPrepare()
    print("Q502407trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502407trigger:TriggerIn()
    print("Q502407trigger - TriggerIn")
    this:DestroySelf()
end

function Q502407trigger:PreTriggerIn()
    print("Q502407trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 502407)
end

function Q502407trigger:LightUpTriggerIn()
    print("Q502407trigger - LightUpTriggerIn")
end

function Q502407trigger:TriggerOut()
    print("Q502407trigger - TriggerOut")
end

return Q502407trigger
