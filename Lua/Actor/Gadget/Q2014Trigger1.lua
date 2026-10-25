require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2014Trigger1 = class("Q2014Trigger1", GadgetActorProxy)
Q2014Trigger1.defaultAlias = "Q2014Trigger1"
local Q2014ClientConfig = require("Quest/Client/Q2014ClientConfig")

local subIDs = Q2014ClientConfig.SubIDs
local npcs = Q2014ClientConfig.Npcs
local datas = Q2014ClientConfig.Datas

function Q2014Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2014Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2014Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2014"):FinishQuestID(false, 201407)
    self:DestroySelf()
end

function Q2014Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q2014Trigger1
