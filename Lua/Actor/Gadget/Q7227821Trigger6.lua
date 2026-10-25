require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227821Trigger6 = class("Q7227821Trigger6", GadgetActorProxy)
Q7227821Trigger6.defaultAlias = "Q7227821Trigger6"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227821Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227821Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227821Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72278"):RequestInteraction(npcs.Npc3030Data.alias)
    self:DestroySelf()
end

function Q7227821Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q7227821Trigger6
