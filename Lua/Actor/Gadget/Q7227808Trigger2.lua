require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227808Trigger2 = class("Q7227808Trigger2", GadgetActorProxy)
Q7227808Trigger2.defaultAlias = "Q7227808Trigger2"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227808Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227808Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227808Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227808)
    self:DestroySelf()
end

function Q7227808Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q7227808Trigger2
