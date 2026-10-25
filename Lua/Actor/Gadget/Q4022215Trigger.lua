require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022215Trigger = class("Q4022215Trigger", GadgetActorProxy)
Q4022215Trigger.defaultAlias = "Q4022215Trigger"
local Q40222ClientConfig = require("Quest/Client/Q40222ClientConfig")

local this
local subIDs = Q40222ClientConfig.SubIDs
local datas = Q40222ClientConfig.Datas
local npcs = Q40222ClientConfig.Npcs
local points = Q40222ClientConfig.Points

function Q4022215Trigger:OnPostDataPrepare()
    print("Q4022215Trigger - OnPostDataPrepare")
    this = self
end

function Q4022215Trigger:OnPostComponentPrepare()
    print("Q4022215Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40222)
end

function Q4022215Trigger:TriggerIn()
    print("Q4022215Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4022215)
    this:DestroySelf()
end

function Q4022215Trigger:PreTriggerIn()
    print("Q4022215Trigger - PreTriggerIn")
end

function Q4022215Trigger:LightUpTriggerIn()
    print("Q4022215Trigger - LightUpTriggerIn")
end

function Q4022215Trigger:TriggerOut()
    print("Q4022215Trigger - TriggerOut")
end

return Q4022215Trigger
