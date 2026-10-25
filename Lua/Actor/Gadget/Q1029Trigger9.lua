require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger9 = class("Q1029Trigger9", GadgetActorProxy)
Q1029Trigger9.defaultAlias = "Q1029Trigger9"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger9:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger9:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger9:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1029"):RequestInteraction(npcs.Npc1048Data.alias)
    self:DestroySelf()
end

function Q1029Trigger9:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger9
