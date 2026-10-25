require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610003Trigger = class("Q7610003Trigger", GadgetActorProxy)
Q7610003Trigger.defaultAlias = "Q7610003Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610003Trigger:OnPostDataPrepare()
    print("Q7610003Trigger - OnPostDataPrepare")
    this = self
end

function Q7610003Trigger:OnPostComponentPrepare()
    print("Q7610003Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610003Trigger:TriggerIn()
    print("Q7610003Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610003)
    this:DestroySelf()
end

function Q7610003Trigger:PreTriggerIn()
    print("Q7610003Trigger - PreTriggerIn")
end

function Q7610003Trigger:LightUpTriggerIn()
    print("Q7610003Trigger - LightUpTriggerIn")
end

function Q7610003Trigger:TriggerOut()
    print("Q7610003Trigger - TriggerOut")
end

return Q7610003Trigger
