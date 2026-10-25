require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72261Trigger04 = class("Q72261Trigger04", GadgetActorProxy)
Q72261Trigger04.defaultAlias = "Q72261Trigger04"
local Q72261ClientConfig = require("Quest/Client/Q72261ClientConfig")

local subIDs = Q72261ClientConfig.SubIDs
local npcs = Q72261ClientConfig.Npcs
local datas = Q72261ClientConfig.Datas

function Q72261Trigger04:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72261Trigger04:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72261Trigger04:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72261"):NarratorOnlyTask(datas.paimengLiugou4, nil, "")
    self:DestroySelf()
end

function Q72261Trigger04:TriggerOut()
    print("TriggerOut")
end

return Q72261Trigger04
