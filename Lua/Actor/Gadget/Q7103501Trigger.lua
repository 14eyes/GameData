require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7103501Trigger = class("Q7103501Trigger", GadgetActorProxy)
Q7103501Trigger.defaultAlias = "Q7103501Trigger"
local Q71035ClientConfig = require("Quest/Client/Q71035ClientConfig")

local subIDs = Q71035ClientConfig.SubIDs
local npcs = Q71035ClientConfig.Npcs
local datas = Q71035ClientConfig.Datas

function Q7103501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7103501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7103501Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71035"):FinishQuestID(false, 7103501)
    self:DestroySelf()
end

function Q7103501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7103501Trigger
