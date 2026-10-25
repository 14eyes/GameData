require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72813Trigger3 = class("Q72813Trigger3", GadgetActorProxy)
Q72813Trigger3.defaultAlias = "Q72813Trigger3"
local Q72813ClientConfig = require("Quest/Client/Q72813ClientConfig")

local subIDs = Q72813ClientConfig.SubIDs
local npcs = Q72813ClientConfig.Npcs
local datas = Q72813ClientConfig.Datas

function Q72813Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72813Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72813Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72813"):FinishQuestID(false, 7281307)
    self:DestroySelf()
end

function Q72813Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q72813Trigger3
