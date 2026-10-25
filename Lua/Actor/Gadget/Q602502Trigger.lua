require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602502Trigger = class("Q602502Trigger", GadgetActorProxy)
Q602502Trigger.defaultAlias = "Q602502Trigger"
local Q6025ClientConfig = require("Quest/Client/Q6025ClientConfig")

local this
local subIDs = Q6025ClientConfig.SubIDs
local datas = Q6025ClientConfig.Datas
local npcs = Q6025ClientConfig.Npcs

function Q602502Trigger:OnPostDataPrepare()
    print("Q602502Trigger - OnPostDataPrepare")
    this = self
end

function Q602502Trigger:OnPostComponentPrepare()
    print("Q602502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6025)
end

function Q602502Trigger:TriggerIn()
    print("Q602502Trigger - TriggerIn")
    actorMgr:GetActor("6025"):RequestInteraction(npcs.Npc1318.alias, "", true)
    this:DestroySelf()
end

function Q602502Trigger:PreTriggerIn()
    print("Q602502Trigger - PreTriggerIn")
end

function Q602502Trigger:LightUpTriggerIn()
    print("Q602502Trigger - LightUpTriggerIn")
end

function Q602502Trigger:TriggerOut()
    print("Q602502Trigger - TriggerOut")
end

return Q602502Trigger
