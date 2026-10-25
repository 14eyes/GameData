require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000401Trigger = class("Q1000401Trigger", GadgetActorProxy)
Q1000401Trigger.defaultAlias = "Q1000401Trigger"
local Q10004ClientConfig = require("Quest/Client/Q10004ClientConfig")

local this
local subIDs = Q10004ClientConfig.SubIDs
local datas = Q10004ClientConfig.Datas
local npcs = Q10004ClientConfig.Npcs

function Q1000401Trigger:OnPostDataPrepare()
    print("Q1000401Trigger - OnPostDataPrepare")
    this = self
end

function Q1000401Trigger:OnPostComponentPrepare()
    print("Q1000401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10004)
end

function Q1000401Trigger:TriggerIn()
    print("Q1000401Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000401)
    this:DestroySelf()
end

function Q1000401Trigger:PreTriggerIn()
    print("Q1000401Trigger - PreTriggerIn")
end

function Q1000401Trigger:LightUpTriggerIn()
    print("Q1000401Trigger - LightUpTriggerIn")
end

function Q1000401Trigger:TriggerOut()
    print("Q1000401Trigger - TriggerOut")
end

return Q1000401Trigger
