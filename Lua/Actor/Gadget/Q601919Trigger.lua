require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601919Trigger = class("Q601919Trigger", GadgetActorProxy)
Q601919Trigger.defaultAlias = "Q601919Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601919Trigger:OnPostDataPrepare()
    print("Q601919Trigger - OnPostDataPrepare")
    this = self
end

function Q601919Trigger:OnPostComponentPrepare()
    print("Q601919Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601919Trigger:TriggerIn()
    print("Q601919Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601919)
    this:DestroySelf()
end

function Q601919Trigger:PreTriggerIn()
    print("Q601919Trigger - PreTriggerIn")
end

function Q601919Trigger:LightUpTriggerIn()
    print("Q601919Trigger - LightUpTriggerIn")
end

function Q601919Trigger:TriggerOut()
    print("Q601919Trigger - TriggerOut")
end

return Q601919Trigger
