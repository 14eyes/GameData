require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7080204Trigger = class("Q7080204Trigger", GadgetActorProxy)
Q7080204Trigger.defaultAlias = "Q7080204Trigger"
local Q70802ClientConfig = require("Quest/Client/Q70802ClientConfig")

local subIDs = Q70802ClientConfig.SubIDs
local npcs = Q70802ClientConfig.Npcs
local datas = Q70802ClientConfig.Datas

function Q7080204Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7080204Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7080204Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("70802"):FinishQuestID(false, 7080204)
    self:DestroySelf()
end

function Q7080204Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7080204Trigger
