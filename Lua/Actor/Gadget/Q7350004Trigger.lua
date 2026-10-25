require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7350004Trigger = class("Q7350004Trigger", GadgetActorProxy)
Q7350004Trigger.defaultAlias = "Q7350004Trigger"
local Q73500ClientConfig = require("Quest/Client/Q73500ClientConfig")

local subIDs = Q73500ClientConfig.SubIDs
local npcs = Q73500ClientConfig.Npcs
local gadgets = Q73500ClientConfig.Gadgets
local datas = Q73500ClientConfig.Datas

function Q7350004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7350004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7350004Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7350004)
    actorMgr:GetActor("73500"):NarratorOnlyTaskByData(datas.NarratorWithId02)
    self:DestroySelf()
end

function Q7350004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7350004Trigger
