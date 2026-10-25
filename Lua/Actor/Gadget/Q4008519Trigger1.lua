require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008519Trigger1 = class("Q4008519Trigger1", GadgetActorProxy)
Q4008519Trigger1.defaultAlias = "Q4008519Trigger1"
local Q40085ClientConfig = require("Quest/Client/Q40085ClientConfig")

local subIDs = Q40085ClientConfig.SubIDs
local npcs = Q40085ClientConfig.Npcs
local gadgets = Q40085ClientConfig.Gadgets
local datas = Q40085ClientConfig.Datas

function Q4008519Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008519Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008519Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008519)
    self:DestroySelf()
end

function Q4008519Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q4008519Trigger1
