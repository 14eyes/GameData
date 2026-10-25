require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger = class("Q40195Trigger", GadgetActorProxy)
Q40195Trigger.defaultAlias = "Q40195Trigger"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger:OnPostDataPrepare()
    print("Q40195Trigger - OnPostDataPrepare")
    this = self
end

function Q40195Trigger:OnPostComponentPrepare()
    print("Q40195Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger:TriggerIn()
    print("Q40195Trigger - TriggerIn")
    actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc1076.alias, "", true)
    this:DestroySelf()
end

function Q40195Trigger:PreTriggerIn()
    print("Q40195Trigger - PreTriggerIn")
end

function Q40195Trigger:LightUpTriggerIn()
    print("Q40195Trigger - LightUpTriggerIn")
end

function Q40195Trigger:TriggerOut()
    print("Q40195Trigger - TriggerOut")
end

return Q40195Trigger
