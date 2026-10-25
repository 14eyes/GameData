require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2018Trigger1 = class("Q2018Trigger1", GadgetActorProxy)
Q2018Trigger1.defaultAlias = "Q2018Trigger1"
local Q2018ClientConfig = require("Quest/Client/Q2018ClientConfig")

local subIDs = Q2018ClientConfig.SubIDs
local npcs = Q2018ClientConfig.Npcs
local datas = Q2018ClientConfig.Datas

function Q2018Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2018Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2018Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2018"):RequestInteraction(npcs.Npc1034Data.alias)
    self:DestroySelf()
end

function Q2018Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q2018Trigger1
