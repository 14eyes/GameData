require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72279Trigger4 = class("Q72279Trigger4", GadgetActorProxy)
Q72279Trigger4.defaultAlias = "Q72279Trigger4"
local Q72279ClientConfig = require("Quest/Client/Q72279ClientConfig")

local subIDs = Q72279ClientConfig.SubIDs
local npcs = Q72279ClientConfig.Npcs
local datas = Q72279ClientConfig.Datas

function Q72279Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72279Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72279Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72279"):RequestInteraction(npcs.Npc1044Data.alias)
    self:DestroySelf()
end

function Q72279Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q72279Trigger4
