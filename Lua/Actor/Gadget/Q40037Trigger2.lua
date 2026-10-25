require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40037Trigger2 = class("Q40037Trigger2", GadgetActorProxy)
Q40037Trigger2.defaultAlias = "Q40037Trigger2"
local Q40037ClientConfig = require("Quest/Client/Q40037ClientConfig")

local subIDs = Q40037ClientConfig.SubIDs
local npcs = Q40037ClientConfig.Npcs
local gadgets = Q40037ClientConfig.Gadgets
local datas = Q40037ClientConfig.Datas

function Q40037Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40037Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40037Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40037"):NarratorOnlyTaskByData(datas.Narrator1, nil, 40037)
    self:DestroySelf()
end

function Q40037Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40037Trigger2
