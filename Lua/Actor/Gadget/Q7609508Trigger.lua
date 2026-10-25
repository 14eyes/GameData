require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609508Trigger = class("Q7609508Trigger", GadgetActorProxy)
Q7609508Trigger.defaultAlias = "Q7609508Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609508Trigger:OnPostDataPrepare()
    print("Q7609508Trigger - OnPostDataPrepare")
    this = self
end

function Q7609508Trigger:OnPostComponentPrepare()
    print("Q7609508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609508Trigger:TriggerIn()
    print("Q7609508Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609508)
    this:DestroySelf()
end

function Q7609508Trigger:PreTriggerIn()
    print("Q7609508Trigger - PreTriggerIn")
end

function Q7609508Trigger:LightUpTriggerIn()
    print("Q7609508Trigger - LightUpTriggerIn")
end

function Q7609508Trigger:TriggerOut()
    print("Q7609508Trigger - TriggerOut")
end

return Q7609508Trigger
