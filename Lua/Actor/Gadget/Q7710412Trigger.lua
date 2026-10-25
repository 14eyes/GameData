require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710412Trigger = class("Q7710412Trigger", GadgetActorProxy)
Q7710412Trigger.defaultAlias = "Q7710412Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710412Trigger:OnPostDataPrepare()
    print("Q7710412Trigger - OnPostDataPrepare")
    this = self
end

function Q7710412Trigger:OnPostComponentPrepare()
    print("Q7710412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8.931435, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710412Trigger:TriggerIn()
    print("Q7710412Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710412)
    this:DestroySelf()
end

function Q7710412Trigger:PreTriggerIn()
    print("Q7710412Trigger - PreTriggerIn")
end

function Q7710412Trigger:LightUpTriggerIn()
    print("Q7710412Trigger - LightUpTriggerIn")
end

function Q7710412Trigger:TriggerOut()
    print("Q7710412Trigger - TriggerOut")
end

return Q7710412Trigger
