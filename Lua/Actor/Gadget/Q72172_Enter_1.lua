require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72172_Enter_1 = class("Q72172_Enter_1", GadgetActorProxy)
Q72172_Enter_1.defaultAlias = "Q72172_Enter_1"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function Q72172_Enter_1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72172_Enter_1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72172_Enter_1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):FinishQuestID(false, 7217202)
    self:DestroySelf()
end

function Q72172_Enter_1:TriggerOut()
    print("TriggerOut")
end

return Q72172_Enter_1
