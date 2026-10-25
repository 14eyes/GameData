require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7304903Trigger = class("Q7304903Trigger", GadgetActorProxy)
Q7304903Trigger.defaultAlias = "Q7304903Trigger"
local Q73049ClientConfig = require("Quest/Client/Q73049ClientConfig")

local subIDs = Q73049ClientConfig.SubIDs
local npcs = Q73049ClientConfig.Npcs
local datas = Q73049ClientConfig.Datas

function Q7304903Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7304903Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7304903Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73049"):RequestInteraction(npcs.Npc20712Data.alias)
    self:DestroySelf()
end

function Q7304903Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7304903Trigger
