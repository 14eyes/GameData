require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72226Trigger1 = class("Q72226Trigger1", GadgetActorProxy)
Q72226Trigger1.defaultAlias = "Q72226Trigger1"
local Q72226ClientConfig = require("Quest/Client/Q72226ClientConfig")

local subIDs = Q72226ClientConfig.SubIDs
local npcs = Q72226ClientConfig.Npcs

function Q72226Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72226Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72226Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q72226Trigger1:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("72226"):SafeDestroyQuestNpc(npcs.Npc20452Data.alias, 3)
    self:DestroySelf()
end

return Q72226Trigger1
