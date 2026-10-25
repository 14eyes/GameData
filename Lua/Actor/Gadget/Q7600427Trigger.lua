require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600427Trigger = class("Q7600427Trigger", GadgetActorProxy)
Q7600427Trigger.defaultAlias = "Q7600427Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600427Trigger:OnPostDataPrepare()
    print("Q7600427Trigger - OnPostDataPrepare")
    this = self
end

function Q7600427Trigger:OnPostComponentPrepare()
    print("Q7600427Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600427Trigger:TriggerIn()
    print("Q7600427Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600427)
    this:DestroySelf()
end

function Q7600427Trigger:PreTriggerIn()
    print("Q7600427Trigger - PreTriggerIn")
end

function Q7600427Trigger:LightUpTriggerIn()
    print("Q7600427Trigger - LightUpTriggerIn")
end

function Q7600427Trigger:TriggerOut()
    print("Q7600427Trigger - TriggerOut")
end

return Q7600427Trigger
