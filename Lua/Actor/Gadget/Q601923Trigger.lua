require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601923Trigger = class("Q601923Trigger", GadgetActorProxy)
Q601923Trigger.defaultAlias = "Q601923Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601923Trigger:OnPostDataPrepare()
    print("Q601923Trigger - OnPostDataPrepare")
    this = self
end

function Q601923Trigger:OnPostComponentPrepare()
    print("Q601923Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601923Trigger:TriggerIn()
    print("Q601923Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601923)
    this:DestroySelf()
end

function Q601923Trigger:PreTriggerIn()
    print("Q601923Trigger - PreTriggerIn")
end

function Q601923Trigger:LightUpTriggerIn()
    print("Q601923Trigger - LightUpTriggerIn")
end

function Q601923Trigger:TriggerOut()
    print("Q601923Trigger - TriggerOut")
end

return Q601923Trigger
