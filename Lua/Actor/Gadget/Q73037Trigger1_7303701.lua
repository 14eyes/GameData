require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73037Trigger1_7303701 = class("Q73037Trigger1_7303701", GadgetActorProxy)
Q73037Trigger1_7303701.defaultAlias = "Q73037Trigger1_7303701"
local Q73037ClientConfig = require("Quest/Client/Q73037ClientConfig")

local subIDs = Q73037ClientConfig.SubIDs
local npcs = Q73037ClientConfig.Npcs
local datas = Q73037ClientConfig.Datas

function Q73037Trigger1_7303701:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73037Trigger1_7303701:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73037Trigger1_7303701:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73037"):NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:DestroySelf()
end

function Q73037Trigger1_7303701:TriggerOut()
    print("TriggerOut")
end

return Q73037Trigger1_7303701
