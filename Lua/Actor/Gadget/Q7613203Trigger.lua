require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613203Trigger = class("Q7613203Trigger", GadgetActorProxy)
Q7613203Trigger.defaultAlias = "Q7613203Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613203Trigger:OnPostDataPrepare()
    print("Q7613203Trigger - OnPostDataPrepare")
    this = self
end

function Q7613203Trigger:OnPostComponentPrepare()
    print("Q7613203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70.40547, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613203Trigger:TriggerIn()
    print("Q7613203Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613203)
    this:DestroySelf()
end

function Q7613203Trigger:PreTriggerIn()
    print("Q7613203Trigger - PreTriggerIn")
end

function Q7613203Trigger:LightUpTriggerIn()
    print("Q7613203Trigger - LightUpTriggerIn")
end

function Q7613203Trigger:TriggerOut()
    print("Q7613203Trigger - TriggerOut")
end

return Q7613203Trigger
