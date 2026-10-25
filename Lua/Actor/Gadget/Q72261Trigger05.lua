require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72261Trigger05 = class("Q72261Trigger05", GadgetActorProxy)
Q72261Trigger05.defaultAlias = "Q72261Trigger05"
local Q72261ClientConfig = require("Quest/Client/Q72261ClientConfig")

local subIDs = Q72261ClientConfig.SubIDs
local npcs = Q72261ClientConfig.Npcs
local datas = Q72261ClientConfig.Datas

function Q72261Trigger05:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72261Trigger05:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72261Trigger05:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72261"):NarratorOnlyTask(datas.paimengLiugou5, function(arg1)
        actorMgr:GetActor("72261"):CallDelay(200, function(arg1)
            actorMgr:GetActor("72261"):NarratorOnlyTask(datas.paimengLiugou6, nil, "")
        end)
    end, "")

    self:DestroySelf()
end

function Q72261Trigger05:TriggerOut()
    print("TriggerOut")
end

return Q72261Trigger05
