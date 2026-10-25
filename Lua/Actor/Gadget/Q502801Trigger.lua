require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502801Trigger = class("Q502801Trigger", GadgetActorProxy)
Q502801Trigger.defaultAlias = "Q502801Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502801Trigger:OnPostDataPrepare()
    print("Q502801Trigger - OnPostDataPrepare")
    this = self
end

function Q502801Trigger:OnPostComponentPrepare()
    print("Q502801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502801Trigger:TriggerIn()
    print("Q502801Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502808)
    this:DestroySelf()
end

function Q502801Trigger:PreTriggerIn()
    print("Q502801Trigger - PreTriggerIn")
end

function Q502801Trigger:LightUpTriggerIn()
    print("Q502801Trigger - LightUpTriggerIn")
end

function Q502801Trigger:TriggerOut()
    print("Q502801Trigger - TriggerOut")
end

return Q502801Trigger
