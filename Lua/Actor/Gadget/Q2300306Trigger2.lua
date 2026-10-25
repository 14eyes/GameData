require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300306Trigger2 = class("Q2300306Trigger2", GadgetActorProxy)
Q2300306Trigger2.defaultAlias = "Q2300306Trigger2"
local Q23003ClientConfig = require("Quest/Client/Q23003ClientConfig")

local subIDs = Q23003ClientConfig.SubIDs
local npcs = Q23003ClientConfig.Npcs
local datas = Q23003ClientConfig.Datas

function Q2300306Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300306Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300306Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23003"):NarratorOnlyTask(datas.NarratorTable230039908, nil, "")
    self:DestroySelf()
end

function Q2300306Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q2300306Trigger2
