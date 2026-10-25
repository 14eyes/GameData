require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005112NATrigger = class("Q4005112NATrigger", GadgetActorProxy)
Q4005112NATrigger.defaultAlias = "Q4005112NATrigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005112NATrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005112NATrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005112NATrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):NarratorOnlyTaskByData(datas.NarratorWithId4005107, nil, 40051)
    self:DestroySelf()
end

function Q4005112NATrigger:TriggerOut()
    print("TriggerOut")
end

return Q4005112NATrigger
