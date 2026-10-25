require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018520Trigger = class("Q4018520Trigger", GadgetActorProxy)
Q4018520Trigger.defaultAlias = "Q4018520Trigger"
local Q40185ClientConfig = require("Quest/Client/Q40185ClientConfig")

local this
local subIDs = Q40185ClientConfig.SubIDs
local datas = Q40185ClientConfig.Datas
local npcs = Q40185ClientConfig.Npcs
local points = Q40185ClientConfig.Points

function Q4018520Trigger:OnPostDataPrepare()
    print("Q4018520Trigger - OnPostDataPrepare")
    this = self
end

function Q4018520Trigger:OnPostComponentPrepare()
    print("Q4018520Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40185)
end

function Q4018520Trigger:TriggerIn()
    print("Q4018520Trigger - TriggerIn")
end

function Q4018520Trigger:PreTriggerIn()
    print("Q4018520Trigger - PreTriggerIn")
end

function Q4018520Trigger:LightUpTriggerIn()
    print("Q4018520Trigger - LightUpTriggerIn")
end

function Q4018520Trigger:TriggerOut()
    print("Q4018520Trigger - TriggerOut")
    actorMgr:DestroyNpcActorByAlias("Npc261140185")
    this:DestroySelf()
end

return Q4018520Trigger
