require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610120Trigger = class("Q7610120Trigger", GadgetActorProxy)
Q7610120Trigger.defaultAlias = "Q7610120Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610120Trigger:OnPostDataPrepare()
    print("Q7610120Trigger - OnPostDataPrepare")
    this = self
end

function Q7610120Trigger:OnPostComponentPrepare()
    print("Q7610120Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610120Trigger:TriggerIn()
    print("Q7610120Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610120)
    this:DestroySelf()
end

function Q7610120Trigger:PreTriggerIn()
    print("Q7610120Trigger - PreTriggerIn")
end

function Q7610120Trigger:LightUpTriggerIn()
    print("Q7610120Trigger - LightUpTriggerIn")
end

function Q7610120Trigger:TriggerOut()
    print("Q7610120Trigger - TriggerOut")
end

return Q7610120Trigger
