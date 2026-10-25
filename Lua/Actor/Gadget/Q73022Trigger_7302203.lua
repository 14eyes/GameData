require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73022Trigger_7302203 = class("Q73022Trigger_7302203", GadgetActorProxy)
Q73022Trigger_7302203.defaultAlias = "Q73022Trigger_7302203"
local Q73022ClientConfig = require("Quest/Client/Q73022ClientConfig")

local subIDs = Q73022ClientConfig.SubIDs
local npcs = Q73022ClientConfig.Npcs
local datas = Q73022ClientConfig.Datas

function Q73022Trigger_7302203:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73022Trigger_7302203:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73022Trigger_7302203:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7302203)
    self:DestroySelf()
end

function Q73022Trigger_7302203:TriggerOut()
    print("TriggerOut")
end

return Q73022Trigger_7302203
