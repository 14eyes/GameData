require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004704Trigger = class("Q4004704Trigger", GadgetActorProxy)
Q4004704Trigger.defaultAlias = "Q4004704Trigger"
local Q40047ClientConfig = require("Quest/Client/Q40047ClientConfig")

local subIDs = Q40047ClientConfig.SubIDs
local npcs = Q40047ClientConfig.Npcs
local datas = Q40047ClientConfig.Datas

function Q4004704Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004704Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9.016278, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004704Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40047"):FinishQuestID(false, 4004704)
    self:DestroySelf()
end

function Q4004704Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004704Trigger
