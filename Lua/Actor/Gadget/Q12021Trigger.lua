require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12021Trigger = class("Q12021Trigger", GadgetActorProxy)
Q12021Trigger.defaultAlias = "Q12021Trigger"
local Q12021ClientConfig = require("Quest/Client/Q12021ClientConfig")

local subIDs = Q12021ClientConfig.SubIDs
local npcs = Q12021ClientConfig.Npcs
local datas = Q12021ClientConfig.Datas

function Q12021Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12021Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12021Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12021"):FinishQuestID(false, 1202113)
end

function Q12021Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q12021Trigger
