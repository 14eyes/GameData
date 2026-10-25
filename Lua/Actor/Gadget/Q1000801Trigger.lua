require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000801Trigger = class("Q1000801Trigger", GadgetActorProxy)
Q1000801Trigger.defaultAlias = "Q1000801Trigger"
local Q10008ClientConfig = require("Quest/Client/Q10008ClientConfig")

local this
local subIDs = Q10008ClientConfig.SubIDs
local datas = Q10008ClientConfig.Datas
local npcs = Q10008ClientConfig.Npcs
local points = Q10008ClientConfig.Points

function Q1000801Trigger:OnPostDataPrepare()
    print("Q1000801Trigger - OnPostDataPrepare")
    this = self
end

function Q1000801Trigger:OnPostComponentPrepare()
    print("Q1000801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10008)
end

function Q1000801Trigger:TriggerIn()
    print("Q1000801Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000801)
    this:DestroySelf()
end

function Q1000801Trigger:PreTriggerIn()
    print("Q1000801Trigger - PreTriggerIn")
end

function Q1000801Trigger:LightUpTriggerIn()
    print("Q1000801Trigger - LightUpTriggerIn")
end

function Q1000801Trigger:TriggerOut()
    print("Q1000801Trigger - TriggerOut")
end

return Q1000801Trigger
