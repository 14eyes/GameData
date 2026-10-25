require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73075Trigger_AutoInteracte = class("Q73075Trigger_AutoInteracte", GadgetActorProxy)
Q73075Trigger_AutoInteracte.defaultAlias = "Q73075Trigger_AutoInteracte"
local Q73075ClientConfig = require("Quest/Client/Q73075ClientConfig")

local subIDs = Q73075ClientConfig.SubIDs
local npcs = Q73075ClientConfig.Npcs

function Q73075Trigger_AutoInteracte:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73075Trigger_AutoInteracte:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2.442716, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73075Trigger_AutoInteracte:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q73075ClientConfig.ActorAlias)
    if actorUtils.IsLevelTagValid(38, true) then
        actor:RequestInteraction(npcs.Npc20607Data.alias)
        self:DestroySelf()
    end
end

function Q73075Trigger_AutoInteracte:TriggerOut()
    print("TriggerOut")
end

return Q73075Trigger_AutoInteracte
