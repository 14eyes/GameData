require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72813Trigger1 = class("Q72813Trigger1", GadgetActorProxy)
Q72813Trigger1.defaultAlias = "Q72813Trigger1"
local Q72813ClientConfig = require("Quest/Client/Q72813ClientConfig")

local subIDs = Q72813ClientConfig.SubIDs
local npcs = Q72813ClientConfig.Npcs
local datas = Q72813ClientConfig.Datas

function Q72813Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72813Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72813Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72813"):FinishQuestID(false, 7281303)
    self:DestroySelf()
end

function Q72813Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72813Trigger1
