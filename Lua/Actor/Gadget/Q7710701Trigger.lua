require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710701Trigger = class("Q7710701Trigger", GadgetActorProxy)
Q7710701Trigger.defaultAlias = "Q7710701Trigger"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710701Trigger:OnPostDataPrepare()
    print("Q7710701Trigger - OnPostDataPrepare")
    this = self
end

function Q7710701Trigger:OnPostComponentPrepare()
    print("Q7710701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710701Trigger:TriggerIn()
    print("Q7710701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710701)
    this:DestroySelf()
end

function Q7710701Trigger:PreTriggerIn()
    print("Q7710701Trigger - PreTriggerIn")
end

function Q7710701Trigger:LightUpTriggerIn()
    print("Q7710701Trigger - LightUpTriggerIn")
end

function Q7710701Trigger:TriggerOut()
    print("Q7710701Trigger - TriggerOut")
end

return Q7710701Trigger
