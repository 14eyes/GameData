require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600402Trigger = class("Q7600402Trigger", GadgetActorProxy)
Q7600402Trigger.defaultAlias = "Q7600402Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600402Trigger:OnPostDataPrepare()
    print("Q7600402Trigger - OnPostDataPrepare")
    this = self
end

function Q7600402Trigger:OnPostComponentPrepare()
    print("Q7600402Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600402Trigger:TriggerIn()
    print("Q7600402Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600402)
    this:DestroySelf()
end

function Q7600402Trigger:PreTriggerIn()
    print("Q7600402Trigger - PreTriggerIn")
end

function Q7600402Trigger:LightUpTriggerIn()
    print("Q7600402Trigger - LightUpTriggerIn")
end

function Q7600402Trigger:TriggerOut()
    print("Q7600402Trigger - TriggerOut")
end

return Q7600402Trigger
