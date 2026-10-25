require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601924Trigger = class("Q601924Trigger", GadgetActorProxy)
Q601924Trigger.defaultAlias = "Q601924Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601924Trigger:OnPostDataPrepare()
    print("Q601924Trigger - OnPostDataPrepare")
    this = self
end

function Q601924Trigger:OnPostComponentPrepare()
    print("Q601924Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601924Trigger:TriggerIn()
    print("Q601924Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601924)
    this:DestroySelf()
end

function Q601924Trigger:PreTriggerIn()
    print("Q601924Trigger - PreTriggerIn")
end

function Q601924Trigger:LightUpTriggerIn()
    print("Q601924Trigger - LightUpTriggerIn")
end

function Q601924Trigger:TriggerOut()
    print("Q601924Trigger - TriggerOut")
end

return Q601924Trigger
