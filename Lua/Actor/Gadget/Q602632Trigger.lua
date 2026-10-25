require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602632Trigger = class("Q602632Trigger", GadgetActorProxy)
Q602632Trigger.defaultAlias = "Q602632Trigger"
local Q6026ClientConfig = require("Quest/Client/Q6026ClientConfig")

local this
local subIDs = Q6026ClientConfig.SubIDs
local datas = Q6026ClientConfig.Datas
local npcs = Q6026ClientConfig.Npcs
local points = Q6026ClientConfig.Points

function Q602632Trigger:OnPostDataPrepare()
    print("Q602632Trigger - OnPostDataPrepare")
    this = self
end

function Q602632Trigger:OnPostComponentPrepare()
    print("Q602632Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6026)
end

function Q602632Trigger:TriggerIn()
    print("Q602632Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602632)
    this:DestroySelf()
end

function Q602632Trigger:PreTriggerIn()
    print("Q602632Trigger - PreTriggerIn")
end

function Q602632Trigger:LightUpTriggerIn()
    print("Q602632Trigger - LightUpTriggerIn")
end

function Q602632Trigger:TriggerOut()
    print("Q602632Trigger - TriggerOut")
end

return Q602632Trigger
