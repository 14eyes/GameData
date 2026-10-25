require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1000908Trigger = class("Q1000908Trigger", GadgetActorProxy)
Q1000908Trigger.defaultAlias = "Q1000908Trigger"
local Q10009ClientConfig = require("Quest/Client/Q10009ClientConfig")

local this
local subIDs = Q10009ClientConfig.SubIDs
local datas = Q10009ClientConfig.Datas
local npcs = Q10009ClientConfig.Npcs
local points = Q10009ClientConfig.Points

function Q1000908Trigger:OnPostDataPrepare()
    print("Q1000908Trigger - OnPostDataPrepare")
    this = self
end

function Q1000908Trigger:OnPostComponentPrepare()
    print("Q1000908Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10009)
end

function Q1000908Trigger:TriggerIn()
    print("Q1000908Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1000908)
    this:DestroySelf()
end

function Q1000908Trigger:PreTriggerIn()
    print("Q1000908Trigger - PreTriggerIn")
end

function Q1000908Trigger:LightUpTriggerIn()
    print("Q1000908Trigger - LightUpTriggerIn")
end

function Q1000908Trigger:TriggerOut()
    print("Q1000908Trigger - TriggerOut")
end

return Q1000908Trigger
