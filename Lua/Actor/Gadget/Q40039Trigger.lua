require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40039Trigger = class("Q40039Trigger", GadgetActorProxy)
Q40039Trigger.defaultAlias = "Q40039Trigger"
local Q40039ClientConfig = require("Quest/Client/Q40039ClientConfig")

local subIDs = Q40039ClientConfig.SubIDs
local npcs = Q40039ClientConfig.Npcs
local datas = Q40039ClientConfig.Datas

function Q40039Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40039Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40039Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40039"):RequestInteraction(npcs.Npc10211Data.alias)
    self:DestroySelf()
end

function Q40039Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40039Trigger
