require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610053Trigger = class("Q7610053Trigger", GadgetActorProxy)
Q7610053Trigger.defaultAlias = "Q7610053Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610053Trigger:OnPostDataPrepare()
    print("Q7610053Trigger - OnPostDataPrepare")
    this = self
end

function Q7610053Trigger:OnPostComponentPrepare()
    print("Q7610053Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610053Trigger:TriggerIn()
    print("Q7610053Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610053)
    this:DestroySelf()
end

function Q7610053Trigger:PreTriggerIn()
    print("Q7610053Trigger - PreTriggerIn")
end

function Q7610053Trigger:LightUpTriggerIn()
    print("Q7610053Trigger - LightUpTriggerIn")
end

function Q7610053Trigger:TriggerOut()
    print("Q7610053Trigger - TriggerOut")
end

return Q7610053Trigger
