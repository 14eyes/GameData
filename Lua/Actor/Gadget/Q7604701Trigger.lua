require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7604701Trigger = class("Q7604701Trigger", GadgetActorProxy)
Q7604701Trigger.defaultAlias = "Q7604701Trigger"
local Q76047ClientConfig = require("Quest/Client/Q76047ClientConfig")

local this
local subIDs = Q76047ClientConfig.SubIDs
local datas = Q76047ClientConfig.Datas
local npcs = Q76047ClientConfig.Npcs

function Q7604701Trigger:OnPostDataPrepare()
    print("Q7604701Trigger - OnPostDataPrepare")
    this = self
end

function Q7604701Trigger:OnPostComponentPrepare()
    print("Q7604701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76047)
end

function Q7604701Trigger:TriggerIn()
    print("Q7604701Trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("76047"):RequestInteractionForceAlias("7042", "", true)
end

function Q7604701Trigger:PreTriggerIn()
    print("Q7604701Trigger - PreTriggerIn")
end

function Q7604701Trigger:LightUpTriggerIn()
    print("Q7604701Trigger - LightUpTriggerIn")
end

function Q7604701Trigger:TriggerOut()
    print("Q7604701Trigger - TriggerOut")
end

return Q7604701Trigger
