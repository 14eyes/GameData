require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502821Trigger = class("Q502821Trigger", GadgetActorProxy)
Q502821Trigger.defaultAlias = "Q502821Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502821Trigger:OnPostDataPrepare()
    print("Q502821Trigger - OnPostDataPrepare")
    this = self
end

function Q502821Trigger:OnPostComponentPrepare()
    print("Q502821Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502821Trigger:TriggerIn()
    print("Q502821Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502821)
    this:DestroySelf()
end

function Q502821Trigger:PreTriggerIn()
    print("Q502821Trigger - PreTriggerIn")
end

function Q502821Trigger:LightUpTriggerIn()
    print("Q502821Trigger - LightUpTriggerIn")
end

function Q502821Trigger:TriggerOut()
    print("Q502821Trigger - TriggerOut")
end

return Q502821Trigger
