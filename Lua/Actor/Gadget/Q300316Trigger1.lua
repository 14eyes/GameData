require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300316Trigger1 = class("Q300316Trigger1", GadgetActorProxy)
Q300316Trigger1.defaultAlias = "Q300316Trigger1"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300316Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300316Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300316Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3003"):TransmitPlayerByQuestId(300316, 300316)
    self:DestroySelf()
end

function Q300316Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q300316Trigger1
