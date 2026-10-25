require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11014Trigger3YunjinMet = class("Q11014Trigger3YunjinMet", GadgetActorProxy)
Q11014Trigger3YunjinMet.defaultAlias = "Q11014Trigger3YunjinMet"
local Q11014ClientConfig = require("Quest/Client/Q11014ClientConfig")

local subIDs = Q11014ClientConfig.SubIDs
local npcs = Q11014ClientConfig.Npcs
local datas = Q11014ClientConfig.Datas

function Q11014Trigger3YunjinMet:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11014Trigger3YunjinMet:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11014Trigger3YunjinMet:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11014"):RequestInteraction(npcs.Npc1031Data.alias)
    self:DestroySelf()
end

function Q11014Trigger3YunjinMet:TriggerOut()
    print("TriggerOut")
end

return Q11014Trigger3YunjinMet
