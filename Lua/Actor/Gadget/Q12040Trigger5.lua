require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12040Trigger5 = class("Q12040Trigger5", GadgetActorProxy)
Q12040Trigger5.defaultAlias = "Q12040Trigger5"
local Q12040ClientConfig = require("Quest/Client/Q12040ClientConfig")

local subIDs = Q12040ClientConfig.SubIDs
local npcs = Q12040ClientConfig.Npcs
local gadgets = Q12040ClientConfig.Gadgets
local datas = Q12040ClientConfig.Datas

function Q12040Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12040Trigger5:TriggerOut()
    print("TriggerOut")
end

function Q12040Trigger5:OnPostComponentPrepare()
    print("Q12040Trigger5 OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12040Trigger5:TriggerIn()
    print("Q12040Trigger5 TriggerIn")
    actorMgr:GetActor("12040"):FinishQuestID(false, 1204014)
    self:DestroySelf()
end

function Q12040Trigger5:OnDestroy()
    print("Q12040Trigger5 OnDestroy")
end

return Q12040Trigger5
