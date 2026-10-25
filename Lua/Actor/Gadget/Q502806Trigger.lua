require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502806Trigger = class("Q502806Trigger", GadgetActorProxy)
Q502806Trigger.defaultAlias = "Q502806Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502806Trigger:OnPostDataPrepare()
    print("Q502806Trigger - OnPostDataPrepare")
    this = self
end

function Q502806Trigger:OnPostComponentPrepare()
    print("Q502806Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502806Trigger:TriggerIn()
    print("Q502806Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 502806)
    this:DestroySelf()
end

function Q502806Trigger:PreTriggerIn()
    print("Q502806Trigger - PreTriggerIn")
end

function Q502806Trigger:LightUpTriggerIn()
    print("Q502806Trigger - LightUpTriggerIn")
end

function Q502806Trigger:TriggerOut()
    print("Q502806Trigger - TriggerOut")
end

return Q502806Trigger
