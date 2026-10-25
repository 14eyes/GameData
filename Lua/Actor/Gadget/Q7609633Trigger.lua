require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609633Trigger = class("Q7609633Trigger", GadgetActorProxy)
Q7609633Trigger.defaultAlias = "Q7609633Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609633Trigger:OnPostDataPrepare()
    print("Q7609633Trigger - OnPostDataPrepare")
    this = self
end

function Q7609633Trigger:OnPostComponentPrepare()
    print("Q7609633Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609633Trigger:TriggerIn()
    print("Q7609633Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609633)
    this:DestroySelf()
end

function Q7609633Trigger:PreTriggerIn()
    print("Q7609633Trigger - PreTriggerIn")
end

function Q7609633Trigger:LightUpTriggerIn()
    print("Q7609633Trigger - LightUpTriggerIn")
end

function Q7609633Trigger:TriggerOut()
    print("Q7609633Trigger - TriggerOut")
end

return Q7609633Trigger
