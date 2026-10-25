require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22041Trigger1 = class("Q22041Trigger1", GadgetActorProxy)
Q22041Trigger1.defaultAlias = "Q22041Trigger1"
local Q22041ClientConfig = require("Quest/Client/Q22041ClientConfig")

local subIDs = Q22041ClientConfig.SubIDs
local npcs = Q22041ClientConfig.Npcs
local datas = Q22041ClientConfig.Datas

function Q22041Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22041Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22041Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q22041Trigger1:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("22041"):FinishQuestID(true, 2204102)
end

return Q22041Trigger1
