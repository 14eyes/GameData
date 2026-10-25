require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600003Trigger = class("Q7600003Trigger", GadgetActorProxy)
Q7600003Trigger.defaultAlias = "Q7600003Trigger"
local Q76000ClientConfig = require("Quest/Client/Q76000ClientConfig")

local this
local subIDs = Q76000ClientConfig.SubIDs
local datas = Q76000ClientConfig.Datas
local npcs = Q76000ClientConfig.Npcs
local points = Q76000ClientConfig.Points

function Q7600003Trigger:OnPostDataPrepare()
    print("Q7600003Trigger - OnPostDataPrepare")
    this = self
end

function Q7600003Trigger:OnPostComponentPrepare()
    print("Q7600003Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 18, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76000)
end

function Q7600003Trigger:TriggerIn()
    print("Q7600003Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600003)
    this:DestroySelf()
end

function Q7600003Trigger:PreTriggerIn()
    print("Q7600003Trigger - PreTriggerIn")
end

function Q7600003Trigger:LightUpTriggerIn()
    print("Q7600003Trigger - LightUpTriggerIn")
end

function Q7600003Trigger:TriggerOut()
    print("Q7600003Trigger - TriggerOut")
end

return Q7600003Trigger
