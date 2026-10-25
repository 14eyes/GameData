require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40029Trigger = class("Q40029Trigger", GadgetActorProxy)
Q40029Trigger.defaultAlias = "Q40029Trigger"
local Q40029ClientConfig = require("Quest/Client/Q40029ClientConfig")

local subIDs = Q40029ClientConfig.SubIDs
local npcs = Q40029ClientConfig.Npcs
local datas = Q40029ClientConfig.Datas

function Q40029Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40029Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40029Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40029"):FinishQuestID(false, 4002901)
    self:DestroySelf()
end

function Q40029Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40029Trigger
