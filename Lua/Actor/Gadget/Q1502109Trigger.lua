require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502109Trigger = class("Q1502109Trigger", GadgetActorProxy)
Q1502109Trigger.defaultAlias = "Q1502109Trigger"
local Q15021ClientConfig = require("Quest/Client/Q15021ClientConfig")

local this
local subIDs = Q15021ClientConfig.SubIDs
local datas = Q15021ClientConfig.Datas
local npcs = Q15021ClientConfig.Npcs
local points = Q15021ClientConfig.Points

function Q1502109Trigger:OnPostDataPrepare()
    print("Q1502109Trigger - OnPostDataPrepare")
    this = self
end

function Q1502109Trigger:OnPostComponentPrepare()
    print("Q1502109Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15021)
end

function Q1502109Trigger:TriggerIn()
    print("Q1502109Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502109)
    this:DestroySelf()
end

function Q1502109Trigger:PreTriggerIn()
    print("Q1502109Trigger - PreTriggerIn")
end

function Q1502109Trigger:LightUpTriggerIn()
    print("Q1502109Trigger - LightUpTriggerIn")
end

function Q1502109Trigger:TriggerOut()
    print("Q1502109Trigger - TriggerOut")
end

return Q1502109Trigger
