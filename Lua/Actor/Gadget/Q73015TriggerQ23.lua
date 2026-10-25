require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73015TriggerQ23 = class("Q73015TriggerQ23", GadgetActorProxy)
Q73015TriggerQ23.defaultAlias = "Q73015TriggerQ23"
local Q73015ClientConfig = require("Quest/Client/Q73015ClientConfig")

local subIDs = Q73015ClientConfig.SubIDs
local npcs = Q73015ClientConfig.Npcs
local datas = Q73015ClientConfig.Datas

function Q73015TriggerQ23:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73015TriggerQ23:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73015TriggerQ23:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301523)
    self:DestroySelf()
end

function Q73015TriggerQ23:TriggerOut()
    print("TriggerOut")
end

return Q73015TriggerQ23
