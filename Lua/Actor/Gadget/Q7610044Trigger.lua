require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610044Trigger = class("Q7610044Trigger", GadgetActorProxy)
Q7610044Trigger.defaultAlias = "Q7610044Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610044Trigger:OnPostDataPrepare()
    print("Q7610044Trigger - OnPostDataPrepare")
    this = self
end

function Q7610044Trigger:OnPostComponentPrepare()
    print("Q7610044Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(41, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610044Trigger:TriggerIn()
    print("Q7610044Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610044)
    this:DestroySelf()
end

function Q7610044Trigger:PreTriggerIn()
    print("Q7610044Trigger - PreTriggerIn")
end

function Q7610044Trigger:LightUpTriggerIn()
    print("Q7610044Trigger - LightUpTriggerIn")
end

function Q7610044Trigger:TriggerOut()
    print("Q7610044Trigger - TriggerOut")
end

return Q7610044Trigger
