require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701801Trigger = class("Q701801Trigger", GadgetActorProxy)
Q701801Trigger.defaultAlias = "Q701801Trigger"
local Q7018ClientConfig = require("Quest/Client/Q7018ClientConfig")

local this
local subIDs = Q7018ClientConfig.SubIDs
local datas = Q7018ClientConfig.Datas
local npcs = Q7018ClientConfig.Npcs
local points = Q7018ClientConfig.Points

function Q701801Trigger:OnPostDataPrepare()
    print("Q701801Trigger - OnPostDataPrepare")
    this = self
end

function Q701801Trigger:OnPostComponentPrepare()
    print("Q701801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14.7779455, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7018)
end

function Q701801Trigger:TriggerIn()
    print("Q701801Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 701801)
    this:DestroySelf()
end

function Q701801Trigger:PreTriggerIn()
    print("Q701801Trigger - PreTriggerIn")
end

function Q701801Trigger:LightUpTriggerIn()
    print("Q701801Trigger - LightUpTriggerIn")
end

function Q701801Trigger:TriggerOut()
    print("Q701801Trigger - TriggerOut")
end

return Q701801Trigger
