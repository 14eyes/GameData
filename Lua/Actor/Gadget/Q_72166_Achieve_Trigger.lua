require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q_72166_Achieve_Trigger = class("Q_72166_Achieve_Trigger", GadgetActorProxy)
Q_72166_Achieve_Trigger.defaultAlias = "Q_72166_Achieve_Trigger"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function Q_72166_Achieve_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q_72166_Achieve_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q_72166_Achieve_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216651)
    self:DestroySelf()
end

function Q_72166_Achieve_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q_72166_Achieve_Trigger
