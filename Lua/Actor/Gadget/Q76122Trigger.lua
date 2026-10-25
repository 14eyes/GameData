require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76122Trigger = class("Q76122Trigger", GadgetActorProxy)
Q76122Trigger.defaultAlias = "Q76122Trigger"
local Q76122ClientConfig = require("Quest/Client/Q76122ClientConfig")

local this
local subIDs = Q76122ClientConfig.SubIDs
local datas = Q76122ClientConfig.Datas
local npcs = Q76122ClientConfig.Npcs
local points = Q76122ClientConfig.Points

function Q76122Trigger:OnPostDataPrepare()
    print("Q76122Trigger - OnPostDataPrepare")
    this = self
end

function Q76122Trigger:OnPostComponentPrepare()
    print("Q76122Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76122)
end

function Q76122Trigger:TriggerIn()
    print("Q76122Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7612206)
end

function Q76122Trigger:PreTriggerIn()
    print("Q76122Trigger - PreTriggerIn")
end

function Q76122Trigger:LightUpTriggerIn()
    print("Q76122Trigger - LightUpTriggerIn")
end

function Q76122Trigger:TriggerOut()
    print("Q76122Trigger - TriggerOut")
end

return Q76122Trigger
