require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008114Trigger = class("Q4008114Trigger", GadgetActorProxy)
Q4008114Trigger.defaultAlias = "Q4008114Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008114Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008114Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008114Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40081"):RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q4008114Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008114Trigger
