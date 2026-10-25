require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602627Trigger = class("Q602627Trigger", GadgetActorProxy)
Q602627Trigger.defaultAlias = "Q602627Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602627Trigger:OnPostDataPrepare()
    print("Q602627Trigger - OnPostDataPrepare")
    this = self
end

function Q602627Trigger:OnPostComponentPrepare()
    print("Q602627Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602627Trigger:TriggerIn()
    print("Q602627Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602627)
    this:DestroySelf()
end

function Q602627Trigger:PreTriggerIn()
    print("Q602627Trigger - PreTriggerIn")
end

function Q602627Trigger:LightUpTriggerIn()
    print("Q602627Trigger - LightUpTriggerIn")
end

function Q602627Trigger:TriggerOut()
    print("Q602627Trigger - TriggerOut")
end

return Q602627Trigger
