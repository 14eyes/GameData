require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71101Trigger1 = class("Q71101Trigger1", GadgetActorProxy)
Q71101Trigger1.defaultAlias = "Q71101Trigger1"
local Q71101ClientConfig = require("Quest/Client/Q71101ClientConfig")

local subIDs = Q71101ClientConfig.SubIDs
local npcs = Q71101ClientConfig.Npcs
local datas = Q71101ClientConfig.Datas

function Q71101Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71101Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(120, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q71101Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71101"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q71101Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q71101Trigger1
