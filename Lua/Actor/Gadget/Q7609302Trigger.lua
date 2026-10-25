require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609302Trigger = class("Q7609302Trigger", GadgetActorProxy)
Q7609302Trigger.defaultAlias = "Q7609302Trigger"
local Q76093ClientConfig = require("Quest/Client/Q76093ClientConfig")

local this
local subIDs = Q76093ClientConfig.SubIDs
local datas = Q76093ClientConfig.Datas
local npcs = Q76093ClientConfig.Npcs
local points = Q76093ClientConfig.Points

function Q7609302Trigger:OnPostDataPrepare()
    print("Q7609302Trigger - OnPostDataPrepare")
    this = self
end

function Q7609302Trigger:OnPostComponentPrepare()
    print("Q7609302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(48, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76093)
end

function Q7609302Trigger:TriggerIn()
    print("Q7609302Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609302)
    this:DestroySelf()
end

function Q7609302Trigger:PreTriggerIn()
    print("Q7609302Trigger - PreTriggerIn")
end

function Q7609302Trigger:LightUpTriggerIn()
    print("Q7609302Trigger - LightUpTriggerIn")
end

function Q7609302Trigger:TriggerOut()
    print("Q7609302Trigger - TriggerOut")
end

return Q7609302Trigger
