require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614712Trigger = class("Q7614712Trigger", GadgetActorProxy)
Q7614712Trigger.defaultAlias = "Q7614712Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614712Trigger:OnPostDataPrepare()
    print("Q7614712Trigger - OnPostDataPrepare")
    this = self
end

function Q7614712Trigger:OnPostComponentPrepare()
    print("Q7614712Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6.172002, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614712Trigger:TriggerIn()
    print("Q7614712Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, datas.NarratorWithId_7624712)
end

function Q7614712Trigger:PreTriggerIn()
    print("Q7614712Trigger - PreTriggerIn")
end

function Q7614712Trigger:LightUpTriggerIn()
    print("Q7614712Trigger - LightUpTriggerIn")
end

function Q7614712Trigger:TriggerOut()
    print("Q7614712Trigger - TriggerOut")
end

return Q7614712Trigger
