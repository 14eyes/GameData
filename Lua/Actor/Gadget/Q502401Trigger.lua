require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502401Trigger = class("Q502401Trigger", GadgetActorProxy)
Q502401Trigger.defaultAlias = "Q502401Trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502401Trigger:OnPostDataPrepare()
    print("Q502401Trigger - OnPostDataPrepare")
    this = self
end

function Q502401Trigger:OnPostComponentPrepare()
    print("Q502401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502401Trigger:TriggerIn()
    print("Q502401Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 502401)
end

function Q502401Trigger:PreTriggerIn()
    print("Q502401Trigger - PreTriggerIn")
end

function Q502401Trigger:LightUpTriggerIn()
    print("Q502401Trigger - LightUpTriggerIn")
end

function Q502401Trigger:TriggerOut()
    print("Q502401Trigger - TriggerOut")
end

return Q502401Trigger
