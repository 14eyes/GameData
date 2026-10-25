require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502605Trigger = class("Q1502605Trigger", GadgetActorProxy)
Q1502605Trigger.defaultAlias = "Q1502605Trigger"
local Q15026ClientConfig = require("Quest/Client/Q15026ClientConfig")

local this
local subIDs = Q15026ClientConfig.SubIDs
local datas = Q15026ClientConfig.Datas
local npcs = Q15026ClientConfig.Npcs
local points = Q15026ClientConfig.Points

function Q1502605Trigger:OnPostDataPrepare()
    print("Q1502605Trigger - OnPostDataPrepare")
    this = self
end

function Q1502605Trigger:OnPostComponentPrepare()
    print("Q1502605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15026)
end

function Q1502605Trigger:TriggerIn()
    print("Q1502605Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502605)
    this:DestroySelf()
end

function Q1502605Trigger:PreTriggerIn()
    print("Q1502605Trigger - PreTriggerIn")
end

function Q1502605Trigger:LightUpTriggerIn()
    print("Q1502605Trigger - LightUpTriggerIn")
end

function Q1502605Trigger:TriggerOut()
    print("Q1502605Trigger - TriggerOut")
end

return Q1502605Trigger
