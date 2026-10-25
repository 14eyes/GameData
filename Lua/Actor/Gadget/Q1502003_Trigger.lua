require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502003_Trigger = class("Q1502003_Trigger", GadgetActorProxy)
Q1502003_Trigger.defaultAlias = "Q1502003_Trigger"
local Q15020ClientConfig = require("Quest/Client/Q15020ClientConfig")

local this
local subIDs = Q15020ClientConfig.SubIDs
local datas = Q15020ClientConfig.Datas
local npcs = Q15020ClientConfig.Npcs
local points = Q15020ClientConfig.Points

function Q1502003_Trigger:OnPostDataPrepare()
    print("Q1502003_Trigger - OnPostDataPrepare")
    this = self
end

function Q1502003_Trigger:OnPostComponentPrepare()
    print("Q1502003_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15020)
end

function Q1502003_Trigger:TriggerIn()
    print("Q1502003_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502003)
    this:DestroySelf()
end

function Q1502003_Trigger:PreTriggerIn()
    print("Q1502003_Trigger - PreTriggerIn")
end

function Q1502003_Trigger:LightUpTriggerIn()
    print("Q1502003_Trigger - LightUpTriggerIn")
end

function Q1502003_Trigger:TriggerOut()
    print("Q1502003_Trigger - TriggerOut")
end

return Q1502003_Trigger
