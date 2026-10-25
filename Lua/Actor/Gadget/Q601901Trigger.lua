require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601901Trigger = class("Q601901Trigger", GadgetActorProxy)
Q601901Trigger.defaultAlias = "Q601901Trigger"
local Q6019ClientConfig = require("Quest/Client/Q6019ClientConfig")

local this
local subIDs = Q6019ClientConfig.SubIDs
local datas = Q6019ClientConfig.Datas
local npcs = Q6019ClientConfig.Npcs
local points = Q6019ClientConfig.Points

function Q601901Trigger:OnPostDataPrepare()
    print("Q601901Trigger - OnPostDataPrepare")
    this = self
end

function Q601901Trigger:OnPostComponentPrepare()
    print("Q601901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6019)
end

function Q601901Trigger:TriggerIn()
    print("Q601901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601901)
    this:DestroySelf()
end

function Q601901Trigger:PreTriggerIn()
    print("Q601901Trigger - PreTriggerIn")
end

function Q601901Trigger:LightUpTriggerIn()
    print("Q601901Trigger - LightUpTriggerIn")
end

function Q601901Trigger:TriggerOut()
    print("Q601901Trigger - TriggerOut")
end

return Q601901Trigger
