require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602602Trigger = class("Q7602602Trigger", GadgetActorProxy)
Q7602602Trigger.defaultAlias = "Q7602602Trigger"
local Q76026ClientConfig = require("Quest/Client/Q76026ClientConfig")

local this
local subIDs = Q76026ClientConfig.SubIDs
local datas = Q76026ClientConfig.Datas
local npcs = Q76026ClientConfig.Npcs
local points = Q76026ClientConfig.Points

function Q7602602Trigger:OnPostDataPrepare()
    print("Q7602602Trigger - OnPostDataPrepare")
    this = self
end

function Q7602602Trigger:OnPostComponentPrepare()
    print("Q7602602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13.569846, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76026)
end

function Q7602602Trigger:TriggerIn()
    print("Q7602602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602602)
    this:DestroySelf()
end

function Q7602602Trigger:PreTriggerIn()
    print("Q7602602Trigger - PreTriggerIn")
end

function Q7602602Trigger:LightUpTriggerIn()
    print("Q7602602Trigger - LightUpTriggerIn")
end

function Q7602602Trigger:TriggerOut()
    print("Q7602602Trigger - TriggerOut")
end

return Q7602602Trigger
