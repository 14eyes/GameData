require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710224Trigger = class("Q7710224Trigger", GadgetActorProxy)
Q7710224Trigger.defaultAlias = "Q7710224Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710224Trigger:OnPostDataPrepare()
    print("Q7710224Trigger - OnPostDataPrepare")
    this = self
end

function Q7710224Trigger:OnPostComponentPrepare()
    print("Q7710224Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710224Trigger:TriggerIn()
    print("Q7710224Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711105)
    this:DestroySelf()
end

function Q7710224Trigger:PreTriggerIn()
    print("Q7710224Trigger - PreTriggerIn")
end

function Q7710224Trigger:LightUpTriggerIn()
    print("Q7710224Trigger - LightUpTriggerIn")
end

function Q7710224Trigger:TriggerOut()
    print("Q7710224Trigger - TriggerOut")
end

return Q7710224Trigger
