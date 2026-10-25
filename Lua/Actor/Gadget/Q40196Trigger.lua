require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40196Trigger = class("Q40196Trigger", GadgetActorProxy)
Q40196Trigger.defaultAlias = "Q40196Trigger"
local Q40196ClientConfig = require("Quest/Client/Q40196ClientConfig")

local this
local subIDs = Q40196ClientConfig.SubIDs
local datas = Q40196ClientConfig.Datas
local npcs = Q40196ClientConfig.Npcs
local points = Q40196ClientConfig.Points

function Q40196Trigger:OnPostDataPrepare()
    print("Q40196Trigger - OnPostDataPrepare")
    this = self
end

function Q40196Trigger:OnPostComponentPrepare()
    print("Q40196Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40196)
end

function Q40196Trigger:TriggerIn()
    print("Q40196Trigger - TriggerIn")
    actorMgr:GetActor("40196"):RequestInteraction(npcs.Npc1076.alias, "", true)
    this:DestroySelf()
end

function Q40196Trigger:PreTriggerIn()
    print("Q40196Trigger - PreTriggerIn")
end

function Q40196Trigger:LightUpTriggerIn()
    print("Q40196Trigger - LightUpTriggerIn")
end

function Q40196Trigger:TriggerOut()
    print("Q40196Trigger - TriggerOut")
end

return Q40196Trigger
