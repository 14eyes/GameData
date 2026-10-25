require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403103Trigger = class("Q1403103Trigger", GadgetActorProxy)
Q1403103Trigger.defaultAlias = "Q1403103Trigger"
local Q14031ClientConfig = require("Quest/Client/Q14031ClientConfig")

local this
local subIDs = Q14031ClientConfig.SubIDs
local datas = Q14031ClientConfig.Datas
local npcs = Q14031ClientConfig.Npcs
local points = Q14031ClientConfig.Points

function Q1403103Trigger:OnPostDataPrepare()
    print("Q1403103Trigger - OnPostDataPrepare")
    this = self
end

function Q1403103Trigger:OnPostComponentPrepare()
    print("Q1403103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14031)
end

function Q1403103Trigger:TriggerIn()
    print("Q1403103Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1403103)
    this:DestroySelf()
end

function Q1403103Trigger:PreTriggerIn()
    print("Q1403103Trigger - PreTriggerIn")
end

function Q1403103Trigger:LightUpTriggerIn()
    print("Q1403103Trigger - LightUpTriggerIn")
end

function Q1403103Trigger:TriggerOut()
    print("Q1403103Trigger - TriggerOut")
end

return Q1403103Trigger
