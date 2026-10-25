require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41422Trigger = class("Q41422Trigger", GadgetActorProxy)
Q41422Trigger.defaultAlias = "Q41422Trigger"
local Q41422ClientConfig = require("Quest/Client/Q41422ClientConfig")

local mainID = Q41422ClientConfig.MainID
local actorAlias = Q41422ClientConfig.ActorAlias
local subIDs = Q41422ClientConfig.SubIDs
local npcs = Q41422ClientConfig.Npcs
local gadgets = Q41422ClientConfig.Gadgets
local datas = Q41422ClientConfig.Datas

function Q41422Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41422Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41422Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10367Data.alias)
    actorMgr:DestroyEntityActor(datas.Q41422Trigger_.alias, 3, false)
end

function Q41422Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41422Trigger
