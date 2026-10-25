require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403303Trigger = class("Q1403303Trigger", GadgetActorProxy)
Q1403303Trigger.defaultAlias = "Q1403303Trigger"
local Q14033ClientConfig = require("Quest/Client/Q14033ClientConfig")

local this
local subIDs = Q14033ClientConfig.SubIDs
local datas = Q14033ClientConfig.Datas
local npcs = Q14033ClientConfig.Npcs
local points = Q14033ClientConfig.Points

function Q1403303Trigger:OnPostDataPrepare()
    print("Q1403303Trigger - OnPostDataPrepare")
    this = self
end

function Q1403303Trigger:OnPostComponentPrepare()
    print("Q1403303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14033)
end

function Q1403303Trigger:TriggerIn()
    print("Q1403303Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403303)
    this:DestroySelf()
end

function Q1403303Trigger:PreTriggerIn()
    print("Q1403303Trigger - PreTriggerIn")
end

function Q1403303Trigger:LightUpTriggerIn()
    print("Q1403303Trigger - LightUpTriggerIn")
end

function Q1403303Trigger:TriggerOut()
    print("Q1403303Trigger - TriggerOut")
end

return Q1403303Trigger
