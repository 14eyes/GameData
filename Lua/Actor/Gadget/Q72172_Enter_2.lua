require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72172_Enter_2 = class("Q72172_Enter_2", GadgetActorProxy)
Q72172_Enter_2.defaultAlias = "Q72172_Enter_2"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function Q72172_Enter_2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72172_Enter_2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72172_Enter_2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):FinishQuestID(false, 7217222)
    self:DestroySelf()
end

function Q72172_Enter_2:TriggerOut()
    print("TriggerOut")
end

return Q72172_Enter_2
