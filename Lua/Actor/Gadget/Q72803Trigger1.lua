require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72803Trigger1 = class("Q72803Trigger1", GadgetActorProxy)
Q72803Trigger1.defaultAlias = "Q72803Trigger1"
local Q72803ClientConfig = require("Quest/Client/Q72803ClientConfig")

local mainID = Q72803ClientConfig.MainID
local actorAlias = Q72803ClientConfig.ActorAlias
local subIDs = Q72803ClientConfig.SubIDs
local npcs = Q72803ClientConfig.Npcs
local datas = Q72803ClientConfig.Datas

function Q72803Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72803Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72803Trigger1:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7280302)
    self:DestroySelf()
end

function Q72803Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72803Trigger1
