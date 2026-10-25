require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610019Trigger = class("Q7610019Trigger", GadgetActorProxy)
Q7610019Trigger.defaultAlias = "Q7610019Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610019Trigger:OnPostDataPrepare()
    print("Q7610019Trigger - OnPostDataPrepare")
    this = self
end

function Q7610019Trigger:OnPostComponentPrepare()
    print("Q7610019Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610019Trigger:TriggerIn()
    print("Q7610019Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610019)
    this:DestroySelf()
end

function Q7610019Trigger:PreTriggerIn()
    print("Q7610019Trigger - PreTriggerIn")
end

function Q7610019Trigger:LightUpTriggerIn()
    print("Q7610019Trigger - LightUpTriggerIn")
end

function Q7610019Trigger:TriggerOut()
    print("Q7610019Trigger - TriggerOut")
end

return Q7610019Trigger
