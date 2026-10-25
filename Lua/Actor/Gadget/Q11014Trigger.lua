require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11014Trigger = class("Q11014Trigger", GadgetActorProxy)
Q11014Trigger.defaultAlias = "Q11014Trigger"
local Q11014ClientConfig = require("Quest/Client/Q11014ClientConfig")

local subIDs = Q11014ClientConfig.SubIDs
local npcs = Q11014ClientConfig.Npcs
local datas = Q11014ClientConfig.Datas

function Q11014Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11014Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11014Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11014"):FinishQuestID(false, 1101417)
    self:DestroySelf()
end

function Q11014Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11014Trigger
