require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710201Trigger = class("Q7710201Trigger", GadgetActorProxy)
Q7710201Trigger.defaultAlias = "Q7710201Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710201Trigger:OnPostDataPrepare()
    print("Q7710201Trigger - OnPostDataPrepare")
    this = self
end

function Q7710201Trigger:OnPostComponentPrepare()
    print("Q7710201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710201Trigger:TriggerIn()
    print("Q7710201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710201)
    this:DestroySelf()
end

function Q7710201Trigger:PreTriggerIn()
    print("Q7710201Trigger - PreTriggerIn")
end

function Q7710201Trigger:LightUpTriggerIn()
    print("Q7710201Trigger - LightUpTriggerIn")
end

function Q7710201Trigger:TriggerOut()
    print("Q7710201Trigger - TriggerOut")
end

return Q7710201Trigger
