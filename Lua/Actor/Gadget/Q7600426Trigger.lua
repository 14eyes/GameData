require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600426Trigger = class("Q7600426Trigger", GadgetActorProxy)
Q7600426Trigger.defaultAlias = "Q7600426Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600426Trigger:OnPostDataPrepare()
    print("Q7600426Trigger - OnPostDataPrepare")
    this = self
end

function Q7600426Trigger:OnPostComponentPrepare()
    print("Q7600426Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600426Trigger:TriggerIn()
    print("Q7600426Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600426)
    this:DestroySelf()
end

function Q7600426Trigger:PreTriggerIn()
    print("Q7600426Trigger - PreTriggerIn")
end

function Q7600426Trigger:LightUpTriggerIn()
    print("Q7600426Trigger - LightUpTriggerIn")
end

function Q7600426Trigger:TriggerOut()
    print("Q7600426Trigger - TriggerOut")
end

return Q7600426Trigger
