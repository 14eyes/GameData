require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502607Trigger = class("Q1502607Trigger", GadgetActorProxy)
Q1502607Trigger.defaultAlias = "Q1502607Trigger"
local Q15026ClientConfig = require("Quest/Client/Q15026ClientConfig")

local this
local subIDs = Q15026ClientConfig.SubIDs
local datas = Q15026ClientConfig.Datas
local npcs = Q15026ClientConfig.Npcs
local points = Q15026ClientConfig.Points

function Q1502607Trigger:OnPostDataPrepare()
    print("Q1502607Trigger - OnPostDataPrepare")
    this = self
end

function Q1502607Trigger:OnPostComponentPrepare()
    print("Q1502607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15026)
end

function Q1502607Trigger:TriggerIn()
    print("Q1502607Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502607)
    this:DestroySelf()
end

function Q1502607Trigger:PreTriggerIn()
    print("Q1502607Trigger - PreTriggerIn")
end

function Q1502607Trigger:LightUpTriggerIn()
    print("Q1502607Trigger - LightUpTriggerIn")
end

function Q1502607Trigger:TriggerOut()
    print("Q1502607Trigger - TriggerOut")
end

return Q1502607Trigger
