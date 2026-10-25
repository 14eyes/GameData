require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7222505Trigger1 = class("Q7222505Trigger1", GadgetActorProxy)
Q7222505Trigger1.defaultAlias = "Q7222505Trigger1"
local Q72225ClientConfig = require("Quest/Client/Q72225ClientConfig")

local subIDs = Q72225ClientConfig.SubIDs
local npcs = Q72225ClientConfig.Npcs

function Q7222505Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7222505Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7222505Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q7222505Trigger1:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("72225")
    actor:SafeDestroyQuestNpc(npcs.Npc20320Data.alias, 3)
    actor:SafeDestroyQuestNpc(npcs.Npc20449Data.alias, 3)
    self:DestroySelf()
end

return Q7222505Trigger1
