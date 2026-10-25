require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227813Trigger4 = class("Q7227813Trigger4", GadgetActorProxy)
Q7227813Trigger4.defaultAlias = "Q7227813Trigger4"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227813Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227813Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227813Trigger4:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227813)
    self:DestroySelf()
end

function Q7227813Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q7227813Trigger4
