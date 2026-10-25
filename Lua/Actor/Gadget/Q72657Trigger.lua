require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72657Trigger = class("Q72657Trigger", GadgetActorProxy)
Q72657Trigger.defaultAlias = "Q72657Trigger"
local Q72657ClientConfig = require("Quest/Client/Q72657ClientConfig")

local mainID = Q72657ClientConfig.MainID
local actorAlias = Q72657ClientConfig.ActorAlias
local subIDs = Q72657ClientConfig.SubIDs
local npcs = Q72657ClientConfig.Npcs
local datas = Q72657ClientConfig.Datas

function Q72657Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72657Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72657Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteractionForceAlias(npcs.Npc3098Data.alias)
end

function Q72657Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72657Trigger
