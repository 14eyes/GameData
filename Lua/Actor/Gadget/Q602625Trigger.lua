require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602625Trigger = class("Q602625Trigger", GadgetActorProxy)
Q602625Trigger.defaultAlias = "Q602625Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602625Trigger:OnPostDataPrepare()
    print("Q602625Trigger - OnPostDataPrepare")
    this = self
end

function Q602625Trigger:OnPostComponentPrepare()
    print("Q602625Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602625Trigger:TriggerIn()
    print("Q602625Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602625)
    this:DestroySelf()
end

function Q602625Trigger:PreTriggerIn()
    print("Q602625Trigger - PreTriggerIn")
end

function Q602625Trigger:LightUpTriggerIn()
    print("Q602625Trigger - LightUpTriggerIn")
end

function Q602625Trigger:TriggerOut()
    print("Q602625Trigger - TriggerOut")
end

return Q602625Trigger
