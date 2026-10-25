require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72279Trigger3 = class("Q72279Trigger3", GadgetActorProxy)
Q72279Trigger3.defaultAlias = "Q72279Trigger3"
local Q72279ClientConfig = require("Quest/Client/Q72279ClientConfig")

local subIDs = Q72279ClientConfig.SubIDs
local npcs = Q72279ClientConfig.Npcs
local datas = Q72279ClientConfig.Datas

function Q72279Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72279Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72279Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72279"):RequestInteraction(npcs.Npc20569Data.alias)
    self:DestroySelf()
end

function Q72279Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q72279Trigger3
