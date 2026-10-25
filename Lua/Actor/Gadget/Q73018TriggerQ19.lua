require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73018TriggerQ19 = class("Q73018TriggerQ19", GadgetActorProxy)
Q73018TriggerQ19.defaultAlias = "Q73018TriggerQ19"
local Q73018ClientConfig = require("Quest/Client/Q73018ClientConfig")

local subIDs = Q73018ClientConfig.SubIDs
local npcs = Q73018ClientConfig.Npcs
local datas = Q73018ClientConfig.Datas

function Q73018TriggerQ19:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73018TriggerQ19:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73018TriggerQ19:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301819)
    self:DestroySelf()
end

function Q73018TriggerQ19:TriggerOut()
    print("TriggerOut")
end

return Q73018TriggerQ19
