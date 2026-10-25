require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610008Trigger = class("Q7610008Trigger", GadgetActorProxy)
Q7610008Trigger.defaultAlias = "Q7610008Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610008Trigger:OnPostDataPrepare()
    print("Q7610008Trigger - OnPostDataPrepare")
    this = self
end

function Q7610008Trigger:OnPostComponentPrepare()
    print("Q7610008Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610008Trigger:TriggerIn()
    print("Q7610008Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610008)
    this:DestroySelf()
end

function Q7610008Trigger:PreTriggerIn()
    print("Q7610008Trigger - PreTriggerIn")
end

function Q7610008Trigger:LightUpTriggerIn()
    print("Q7610008Trigger - LightUpTriggerIn")
end

function Q7610008Trigger:TriggerOut()
    print("Q7610008Trigger - TriggerOut")
end

return Q7610008Trigger
