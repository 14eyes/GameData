require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007409_Trigger = class("Q4007409_Trigger", GadgetActorProxy)
Q4007409_Trigger.defaultAlias = "Q4007409_Trigger"
local Q40074ClientConfig = require("Quest/Client/Q40074ClientConfig")

local subIDs = Q40074ClientConfig.SubIDs
local npcs = Q40074ClientConfig.Npcs
local datas = Q40074ClientConfig.Datas

function Q4007409_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007409_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007409_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40074"):RequestInteraction(npcs.Npc10095Data.alias)
    self:DestroySelf()
end

function Q4007409_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007409_Trigger
