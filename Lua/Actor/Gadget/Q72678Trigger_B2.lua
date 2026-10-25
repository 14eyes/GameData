require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72678Trigger_B2 = class("Q72678Trigger_B2", GadgetActorProxy)
Q72678Trigger_B2.defaultAlias = "Q72678Trigger_B2"
local Q72678ClientConfig = require("Quest/Client/Q72678ClientConfig")

local subIDs = Q72678ClientConfig.SubIDs
local npcs = Q72678ClientConfig.Npcs
local datas = Q72678ClientConfig.Datas

function Q72678Trigger_B2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72678Trigger_B2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72678Trigger_B2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72678"):FinishQuestID(false, 7267809)
    self:DestroySelf()
end

function Q72678Trigger_B2:TriggerOut()
    print("TriggerOut")
end

return Q72678Trigger_B2
