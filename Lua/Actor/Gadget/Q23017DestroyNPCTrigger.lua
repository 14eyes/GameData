require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23017DestroyNPCTrigger = class("Q23017DestroyNPCTrigger", GadgetActorProxy)
Q23017DestroyNPCTrigger.defaultAlias = "Q23017DestroyNPCTrigger"
local Q23017ClientConfig = require("Quest/Client/Q23017ClientConfig")

local subIDs = Q23017ClientConfig.SubIDs
local npcs = Q23017ClientConfig.Npcs

function Q23017DestroyNPCTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23017DestroyNPCTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23017DestroyNPCTrigger:TriggerIn()
    print("TriggerIn")
end

function Q23017DestroyNPCTrigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("23017"):SafeDestroyQuestNpc(npcs.Npc12700Data.alias, 3)
    self:DestroySelf()
end

return Q23017DestroyNPCTrigger
