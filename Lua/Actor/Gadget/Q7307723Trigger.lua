require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7307723Trigger = class("Q7307723Trigger", GadgetActorProxy)
Q7307723Trigger.defaultAlias = "Q7307723Trigger"
local Q73077ClientConfig = require("Quest/Client/Q73077ClientConfig")

local subIDs = Q73077ClientConfig.SubIDs
local npcs = Q73077ClientConfig.Npcs
local datas = Q73077ClientConfig.Datas

function Q7307723Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7307723Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7307723Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73077"):RequestInteraction(npcs.Npc4225Data.alias)
    self:DestroySelf()
end

function Q7307723Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7307723Trigger
