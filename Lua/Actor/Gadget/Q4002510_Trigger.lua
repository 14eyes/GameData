require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002510_Trigger = class("Q4002510_Trigger", GadgetActorProxy)
Q4002510_Trigger.defaultAlias = "Q4002510_Trigger"
local Q40025ClientConfig = require("Quest/Client/Q40025ClientConfig")

local subIDs = Q40025ClientConfig.SubIDs
local npcs = Q40025ClientConfig.Npcs
local gadgets = Q40025ClientConfig.Gadgets
local datas = Q40025ClientConfig.Datas

function Q4002510_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002510_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002510_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40025"):FinishQuestID(false, 4002510)
    self:DestroySelf()
end

function Q4002510_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002510_Trigger
