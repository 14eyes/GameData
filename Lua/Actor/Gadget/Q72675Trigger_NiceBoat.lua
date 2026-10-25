require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72675Trigger_NiceBoat = class("Q72675Trigger_NiceBoat", GadgetActorProxy)
Q72675Trigger_NiceBoat.defaultAlias = "Q72675Trigger_NiceBoat"
local Q72675ClientConfig = require("Quest/Client/Q72675ClientConfig")

local subIDs = Q72675ClientConfig.SubIDs
local npcs = Q72675ClientConfig.Npcs
local datas = Q72675ClientConfig.Datas

function Q72675Trigger_NiceBoat:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72675Trigger_NiceBoat:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72675Trigger_NiceBoat:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72675"):FinishQuestID(false, 7267507)
    self:DestroySelf()
end

function Q72675Trigger_NiceBoat:TriggerOut()
    print("TriggerOut")
end

return Q72675Trigger_NiceBoat
