require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019106Trigger = class("Q4019106Trigger", GadgetActorProxy)
Q4019106Trigger.defaultAlias = "Q4019106Trigger"
local Q40191ClientConfig = require("Quest/Client/Q40191ClientConfig")

local this
local subIDs = Q40191ClientConfig.SubIDs
local datas = Q40191ClientConfig.Datas
local npcs = Q40191ClientConfig.Npcs
local points = Q40191ClientConfig.Points

function Q4019106Trigger:OnPostDataPrepare()
    print("Q4019106Trigger - OnPostDataPrepare")
    this = self
end

function Q4019106Trigger:OnPostComponentPrepare()
    print("Q4019106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40191)
end

function Q4019106Trigger:TriggerIn()
    print("Q4019106Trigger - TriggerIn")
    actorMgr:GetActor("40191"):RequestInteraction(npcs.Npc15078.alias, "", true)
    this:DestroySelf()
end

function Q4019106Trigger:PreTriggerIn()
    print("Q4019106Trigger - PreTriggerIn")
end

function Q4019106Trigger:LightUpTriggerIn()
    print("Q4019106Trigger - LightUpTriggerIn")
end

function Q4019106Trigger:TriggerOut()
    print("Q4019106Trigger - TriggerOut")
end

return Q4019106Trigger
