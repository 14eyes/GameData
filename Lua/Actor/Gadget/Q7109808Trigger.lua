require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7109808Trigger = class("Q7109808Trigger", GadgetActorProxy)
Q7109808Trigger.defaultAlias = "Q7109808Trigger"
local Q71098ClientConfig = require("Quest/Client/Q71098ClientConfig")

local subIDs = Q71098ClientConfig.SubIDs
local npcs = Q71098ClientConfig.Npcs
local datas = Q71098ClientConfig.Datas

function Q7109808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7109808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7109808Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71098"):RequestInteraction(npcs.Npc20657Data.alias)
    self:DestroySelf()
end

function Q7109808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7109808Trigger
