require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217742Trigger_39 = class("Q7217742Trigger_39", GadgetActorProxy)
Q7217742Trigger_39.defaultAlias = "Q7217742Trigger_39"
local Q72177ClientConfig = require("Quest/Client/Q72177ClientConfig")

local mainID = Q72177ClientConfig.MainID
local actorAlias = Q72177ClientConfig.ActorAlias
local subIDs = Q72177ClientConfig.SubIDs
local npcs = Q72177ClientConfig.Npcs
local datas = Q72177ClientConfig.Datas

function Q7217742Trigger_39:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217742Trigger_39:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217742Trigger_39:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.NPC20340Data.alias)
    self:DestroySelf()
end

function Q7217742Trigger_39:TriggerOut()
    print("TriggerOut")
end

return Q7217742Trigger_39
