require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73071Trigger_01 = class("Q73071Trigger_01", GadgetActorProxy)
Q73071Trigger_01.defaultAlias = "Q73071Trigger_01"
local Q73071ClientConfig = require("Quest/Client/Q73071ClientConfig")

local subIDs = Q73071ClientConfig.SubIDs
local npcs = Q73071ClientConfig.Npcs

function Q73071Trigger_01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73071Trigger_01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.463588, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73071Trigger_01:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q73071ClientConfig.ActorAlias)
    if actorUtils.IsLevelTagValid(39, true) then
        actor:RequestInteraction(npcs.Npc20749Data.alias)
        self:DestroySelf()
    end
end

function Q73071Trigger_01:TriggerOut()
    print("TriggerOut")
end

return Q73071Trigger_01
