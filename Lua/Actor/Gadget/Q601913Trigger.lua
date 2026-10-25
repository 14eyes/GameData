require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601913Trigger = class("Q601913Trigger", GadgetActorProxy)
Q601913Trigger.defaultAlias = "Q601913Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601913Trigger:OnPostDataPrepare()
    print("Q601913Trigger - OnPostDataPrepare")
    this = self
end

function Q601913Trigger:OnPostComponentPrepare()
    print("Q601913Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(9, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601913Trigger:TriggerIn()
    print("Q601913Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601913)
    this:DestroySelf()
end

function Q601913Trigger:PreTriggerIn()
    print("Q601913Trigger - PreTriggerIn")
end

function Q601913Trigger:LightUpTriggerIn()
    print("Q601913Trigger - LightUpTriggerIn")
end

function Q601913Trigger:TriggerOut()
    print("Q601913Trigger - TriggerOut")
end

return Q601913Trigger
