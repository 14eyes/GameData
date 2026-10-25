require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024106Trigger = class("Q4024106Trigger", GadgetActorProxy)
Q4024106Trigger.defaultAlias = "Q4024106Trigger"
local Q40241ClientConfig = require("Quest/Client/Q40241ClientConfig")

local this
local subIDs = Q40241ClientConfig.SubIDs
local datas = Q40241ClientConfig.Datas
local npcs = Q40241ClientConfig.Npcs
local points = Q40241ClientConfig.Points

function Q4024106Trigger:OnPostDataPrepare()
    print("Q4024106Trigger - OnPostDataPrepare")
    this = self
end

function Q4024106Trigger:OnPostComponentPrepare()
    print("Q4024106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40241)
end

function Q4024106Trigger:TriggerIn()
    print("Q4024106Trigger - TriggerIn")
    actorMgr:GetActor("40241"):RequestInteraction(npcs.Npc1329.alias, "", true)
    this:DestroySelf()
end

function Q4024106Trigger:PreTriggerIn()
    print("Q4024106Trigger - PreTriggerIn")
end

function Q4024106Trigger:LightUpTriggerIn()
    print("Q4024106Trigger - LightUpTriggerIn")
end

function Q4024106Trigger:TriggerOut()
    print("Q4024106Trigger - TriggerOut")
end

return Q4024106Trigger
