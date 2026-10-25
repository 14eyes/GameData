require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12029Trigger = class("Q12029Trigger", GadgetActorProxy)
Q12029Trigger.defaultAlias = "Q12029Trigger"
local Q12029ClientConfig = require("Quest/Client/Q12029ClientConfig")

local subIDs = Q12029ClientConfig.SubIDs
local npcs = Q12029ClientConfig.Npcs
local datas = Q12029ClientConfig.Datas

function Q12029Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12029Trigger:TriggerOut()
    print("TriggerOut")
end

function Q12029Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12029Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12029"):FinishQuestID(false, 9000401)
end

return Q12029Trigger
