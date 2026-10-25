require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227806Trigger1 = class("Q7227806Trigger1", GadgetActorProxy)
Q7227806Trigger1.defaultAlias = "Q7227806Trigger1"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227806Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227806Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227806Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227806)
    self:DestroySelf()
end

function Q7227806Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q7227806Trigger1
