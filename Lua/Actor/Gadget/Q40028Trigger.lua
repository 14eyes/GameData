require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40028Trigger = class("Q40028Trigger", GadgetActorProxy)
Q40028Trigger.defaultAlias = "Q40028Trigger"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q40028Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40028Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40028Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q40028Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40028Trigger
