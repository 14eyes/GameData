require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227811Trigger3 = class("Q7227811Trigger3", GadgetActorProxy)
Q7227811Trigger3.defaultAlias = "Q7227811Trigger3"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227811Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227811Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227811Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72278"):RequestInteraction(npcs.Npc30209Data.alias)
    self:DestroySelf()
end

function Q7227811Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q7227811Trigger3
