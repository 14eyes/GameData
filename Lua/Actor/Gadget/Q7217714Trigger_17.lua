require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217714Trigger_17 = class("Q7217714Trigger_17", GadgetActorProxy)
Q7217714Trigger_17.defaultAlias = "Q7217714Trigger_17"
local Q72177ClientConfig = require("Quest/Client/Q72177ClientConfig")

local mainID = Q72177ClientConfig.MainID
local actorAlias = Q72177ClientConfig.ActorAlias
local subIDs = Q72177ClientConfig.SubIDs
local npcs = Q72177ClientConfig.Npcs
local datas = Q72177ClientConfig.Datas

function Q7217714Trigger_17:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217714Trigger_17:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217714Trigger_17:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.NPC20339Data.alias)
    self:DestroySelf()
end

function Q7217714Trigger_17:TriggerOut()
    print("TriggerOut")
end

return Q7217714Trigger_17
