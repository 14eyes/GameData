require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665111Trigger = class("Q7665111Trigger", GadgetActorProxy)
Q7665111Trigger.defaultAlias = "Q7665111Trigger"
local Q76651ClientConfig = require("Quest/Client/Q76651ClientConfig")

local this
local subIDs = Q76651ClientConfig.SubIDs
local datas = Q76651ClientConfig.Datas
local npcs = Q76651ClientConfig.Npcs
local points = Q76651ClientConfig.Points

function Q7665111Trigger:OnPostDataPrepare()
    print("Q7665111Trigger - OnPostDataPrepare")
    this = self
end

function Q7665111Trigger:OnPostComponentPrepare()
    print("Q7665111Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76651)
end

function Q7665111Trigger:TriggerIn()
    print("Q7665111Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7665111)
    this:DestroySelf()
end

function Q7665111Trigger:PreTriggerIn()
    print("Q7665111Trigger - PreTriggerIn")
end

function Q7665111Trigger:LightUpTriggerIn()
    print("Q7665111Trigger - LightUpTriggerIn")
end

function Q7665111Trigger:TriggerOut()
    print("Q7665111Trigger - TriggerOut")
end

return Q7665111Trigger
