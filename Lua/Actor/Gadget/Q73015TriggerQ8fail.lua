require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73015TriggerQ8fail = class("Q73015TriggerQ8fail", GadgetActorProxy)
Q73015TriggerQ8fail.defaultAlias = "Q73015TriggerQ8fail"
local Q73015ClientConfig = require("Quest/Client/Q73015ClientConfig")

local subIDs = Q73015ClientConfig.SubIDs
local npcs = Q73015ClientConfig.Npcs
local datas = Q73015ClientConfig.Datas

function Q73015TriggerQ8fail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73015TriggerQ8fail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73015TriggerQ8fail:TriggerIn()
    print("TriggerIn")
end

function Q73015TriggerQ8fail:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7301508)
    self:DestroySelf()
end

return Q73015TriggerQ8fail
