require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23003Trigger1 = class("Q23003Trigger1", GadgetActorProxy)
Q23003Trigger1.defaultAlias = "Q23003Trigger1"
local Q23003ClientConfig = require("Quest/Client/Q23003ClientConfig")

local subIDs = Q23003ClientConfig.SubIDs
local npcs = Q23003ClientConfig.Npcs
local datas = Q23003ClientConfig.Datas

function Q23003Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23003Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23003Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2300306)
    self:DestroySelf()
end

function Q23003Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q23003Trigger1
