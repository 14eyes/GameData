require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000807Trigger = class("Q1000807Trigger", GadgetActorProxy)
Q1000807Trigger.defaultAlias = "Q1000807Trigger"
local Q10008ClientConfig = require("Quest/Client/Q10008ClientConfig")

local this
local subIDs = Q10008ClientConfig.SubIDs
local datas = Q10008ClientConfig.Datas
local npcs = Q10008ClientConfig.Npcs
local points = Q10008ClientConfig.Points

function Q1000807Trigger:OnPostDataPrepare()
    print("Q1000807Trigger - OnPostDataPrepare")
    this = self
end

function Q1000807Trigger:OnPostComponentPrepare()
    print("Q1000807Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10008)
end

function Q1000807Trigger:TriggerIn()
    print("Q1000807Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000807)
    this:DestroySelf()
end

function Q1000807Trigger:PreTriggerIn()
    print("Q1000807Trigger - PreTriggerIn")
end

function Q1000807Trigger:LightUpTriggerIn()
    print("Q1000807Trigger - LightUpTriggerIn")
end

function Q1000807Trigger:TriggerOut()
    print("Q1000807Trigger - TriggerOut")
end

return Q1000807Trigger
