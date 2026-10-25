require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002TriggerLeave = class("Q73002TriggerLeave", GadgetActorProxy)
Q73002TriggerLeave.defaultAlias = "Q73002TriggerLeave"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002TriggerLeave:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002TriggerLeave:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002TriggerLeave:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300232)
    self:DestroySelf()
end

function Q73002TriggerLeave:TriggerOut()
    print("TriggerOut")
end

return Q73002TriggerLeave
