require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610050Trigger = class("Q7610050Trigger", GadgetActorProxy)
Q7610050Trigger.defaultAlias = "Q7610050Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610050Trigger:OnPostDataPrepare()
    print("Q7610050Trigger - OnPostDataPrepare")
    this = self
end

function Q7610050Trigger:OnPostComponentPrepare()
    print("Q7610050Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(266, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610050Trigger:TriggerIn()
    print("Q7610050Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610050)
    this:DestroySelf()
end

function Q7610050Trigger:PreTriggerIn()
    print("Q7610050Trigger - PreTriggerIn")
end

function Q7610050Trigger:LightUpTriggerIn()
    print("Q7610050Trigger - LightUpTriggerIn")
end

function Q7610050Trigger:TriggerOut()
    print("Q7610050Trigger - TriggerOut")
end

return Q7610050Trigger
