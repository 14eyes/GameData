require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7109911Trigger = class("Q7109911Trigger", GadgetActorProxy)
Q7109911Trigger.defaultAlias = "Q7109911Trigger"
local Q71099ClientConfig = require("Quest/Client/Q71099ClientConfig")

local subIDs = Q71099ClientConfig.SubIDs
local npcs = Q71099ClientConfig.Npcs
local gadgets = Q71099ClientConfig.Gadgets

function Q7109911Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7109911Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(17.76821, 24.63114, 9.167672, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7109911Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7109911Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("71099"):SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
    self:DestroySelf()
end

return Q7109911Trigger
