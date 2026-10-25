require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72227Trigger1 = class("Q72227Trigger1", GadgetActorProxy)
Q72227Trigger1.defaultAlias = "Q72227Trigger1"
local Q72227ClientConfig = require("Quest/Client/Q72227ClientConfig")

local subIDs = Q72227ClientConfig.SubIDs
local npcs = Q72227ClientConfig.Npcs

function Q72227Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72227Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72227Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q72227Trigger1:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72227"):SafeDestroyQuestNpc(npcs.Npc20453Data.alias, 3)
    self:DestroySelf()
end

return Q72227Trigger1
