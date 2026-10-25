require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72113Trigger1 = class("Q72113Trigger1", GadgetActorProxy)
Q72113Trigger1.defaultAlias = "Q72113Trigger1"
local Q72113ClientConfig = require("Quest/Client/Q72113ClientConfig")

local mainID = Q72113ClientConfig.MainID
local actorAlias = Q72113ClientConfig.ActorAlias
local subIDs = Q72113ClientConfig.SubIDs
local npcs = Q72113ClientConfig.Npcs
local datas = Q72113ClientConfig.Datas

function Q72113Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72113Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72113Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 7211318)
    self:DestroySelf()
end

function Q72113Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q72113Trigger1
