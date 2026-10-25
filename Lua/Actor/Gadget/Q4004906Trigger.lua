require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004906Trigger = class("Q4004906Trigger", GadgetActorProxy)
Q4004906Trigger.defaultAlias = "Q4004906Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004906Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004906Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(38.53759, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004906Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40049"):FinishQuestID(false, 4004906)
    self:DestroySelf()
end

function Q4004906Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004906Trigger
