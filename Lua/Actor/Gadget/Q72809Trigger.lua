require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72809Trigger = class("Q72809Trigger", GadgetActorProxy)
Q72809Trigger.defaultAlias = "Q72809Trigger"
local Q72809ClientConfig = require("Quest/Client/Q72809ClientConfig")

local subIDs = Q72809ClientConfig.SubIDs
local npcs = Q72809ClientConfig.Npcs
local datas = Q72809ClientConfig.Datas

function Q72809Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72809Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72809Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72809"):FinishQuestID(false, 7280904)
    self:DestroySelf()
end

function Q72809Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72809Trigger
