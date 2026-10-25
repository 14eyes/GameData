require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609601Trigger = class("Q7609601Trigger", GadgetActorProxy)
Q7609601Trigger.defaultAlias = "Q7609601Trigger"
local Q76096ClientConfig = require("Quest/Client/Q76096ClientConfig")

local this
local subIDs = Q76096ClientConfig.SubIDs
local datas = Q76096ClientConfig.Datas
local npcs = Q76096ClientConfig.Npcs
local points = Q76096ClientConfig.Points

function Q7609601Trigger:OnPostDataPrepare()
    print("Q7609601Trigger - OnPostDataPrepare")
    this = self
end

function Q7609601Trigger:OnPostComponentPrepare()
    print("Q7609601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76096)
end

function Q7609601Trigger:TriggerIn()
    print("Q7609601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609601)
    this:DestroySelf()
end

function Q7609601Trigger:PreTriggerIn()
    print("Q7609601Trigger - PreTriggerIn")
end

function Q7609601Trigger:LightUpTriggerIn()
    print("Q7609601Trigger - LightUpTriggerIn")
end

function Q7609601Trigger:TriggerOut()
    print("Q7609601Trigger - TriggerOut")
end

return Q7609601Trigger
