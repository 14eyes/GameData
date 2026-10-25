require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300503Trigger = class("Q300503Trigger", GadgetActorProxy)
Q300503Trigger.defaultAlias = "Q300503Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300503Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3005"):RequestInteraction(npcs.Npc12572Data.alias)
    self:DestroySelf()
end

function Q300503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300503Trigger
