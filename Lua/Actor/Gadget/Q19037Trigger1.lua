require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19037Trigger1 = class("Q19037Trigger1", GadgetActorProxy)
Q19037Trigger1.defaultAlias = "Q19037Trigger1"
local Q19037ClientConfig = require("Quest/Client/Q19037ClientConfig")

local subIDs = Q19037ClientConfig.SubIDs
local npcs = Q19037ClientConfig.Npcs
local datas = Q19037ClientConfig.Datas

function Q19037Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19037Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19037Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19037"):RequestInteraction(npcs.Coop_YunjinData.alias)
    self:DestroySelf()
end

function Q19037Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19037Trigger1
