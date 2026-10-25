require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73015TriggerQ02 = class("Q73015TriggerQ02", GadgetActorProxy)
Q73015TriggerQ02.defaultAlias = "Q73015TriggerQ02"
local Q73015ClientConfig = require("Quest/Client/Q73015ClientConfig")

local subIDs = Q73015ClientConfig.SubIDs
local npcs = Q73015ClientConfig.Npcs
local datas = Q73015ClientConfig.Datas

function Q73015TriggerQ02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73015TriggerQ02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73015TriggerQ02:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301502)
    self:DestroySelf()
end

function Q73015TriggerQ02:TriggerOut()
    print("TriggerOut")
end

return Q73015TriggerQ02
