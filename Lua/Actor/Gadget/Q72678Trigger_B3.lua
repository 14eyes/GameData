require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72678Trigger_B3 = class("Q72678Trigger_B3", GadgetActorProxy)
Q72678Trigger_B3.defaultAlias = "Q72678Trigger_B3"
local Q72678ClientConfig = require("Quest/Client/Q72678ClientConfig")

local subIDs = Q72678ClientConfig.SubIDs
local npcs = Q72678ClientConfig.Npcs
local datas = Q72678ClientConfig.Datas

function Q72678Trigger_B3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72678Trigger_B3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72678Trigger_B3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72678"):FinishQuestID(false, 7267805)
    self:DestroySelf()
end

function Q72678Trigger_B3:TriggerOut()
    print("TriggerOut")
end

return Q72678Trigger_B3
