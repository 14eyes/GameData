require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609306Trigger = class("Q7609306Trigger", GadgetActorProxy)
Q7609306Trigger.defaultAlias = "Q7609306Trigger"
local Q76093ClientConfig = require("Quest/Client/Q76093ClientConfig")

local this
local subIDs = Q76093ClientConfig.SubIDs
local datas = Q76093ClientConfig.Datas
local npcs = Q76093ClientConfig.Npcs
local points = Q76093ClientConfig.Points

function Q7609306Trigger:OnPostDataPrepare()
    print("Q7609306Trigger - OnPostDataPrepare")
    this = self
end

function Q7609306Trigger:OnPostComponentPrepare()
    print("Q7609306Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76093)
end

function Q7609306Trigger:TriggerIn()
    print("Q7609306Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609306)
    this:DestroySelf()
end

function Q7609306Trigger:PreTriggerIn()
    print("Q7609306Trigger - PreTriggerIn")
end

function Q7609306Trigger:LightUpTriggerIn()
    print("Q7609306Trigger - LightUpTriggerIn")
end

function Q7609306Trigger:TriggerOut()
    print("Q7609306Trigger - TriggerOut")
end

return Q7609306Trigger
