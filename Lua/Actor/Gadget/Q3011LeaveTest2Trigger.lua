require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3011LeaveTest2Trigger = class("Q3011LeaveTest2Trigger", GadgetActorProxy)
Q3011LeaveTest2Trigger.defaultAlias = "Q3011LeaveTest2Trigger"
local Q3011ClientConfig = require("Quest/Client/Q3011ClientConfig")

local subIDs = Q3011ClientConfig.SubIDs
local npcs = Q3011ClientConfig.Npcs
local datas = Q3011ClientConfig.Datas

function Q3011LeaveTest2Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3011LeaveTest2Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3011LeaveTest2Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301109)
    self:DestroySelf()
end

function Q3011LeaveTest2Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3011LeaveTest2Trigger
