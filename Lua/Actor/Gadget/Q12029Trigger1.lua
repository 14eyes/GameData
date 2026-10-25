require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12029Trigger1 = class("Q12029Trigger1", GadgetActorProxy)
Q12029Trigger1.defaultAlias = "Q12029Trigger1"
local Q12029ClientConfig = require("Quest/Client/Q12029ClientConfig")

local subIDs = Q12029ClientConfig.SubIDs
local npcs = Q12029ClientConfig.Npcs
local datas = Q12029ClientConfig.Datas

function Q12029Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12029Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12029Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12029"):RequestInteraction(npcs.Npc12366Data.alias)
    self:DestroySelf()
end

function Q12029Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q12029Trigger1
