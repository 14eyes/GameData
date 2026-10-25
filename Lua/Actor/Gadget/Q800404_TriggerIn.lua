require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800404_TriggerIn = class("Q800404_TriggerIn", GadgetActorProxy)
Q800404_TriggerIn.defaultAlias = "Q800404_TriggerIn"
local Q8004ClientConfig = require("Quest/Client/Q8004ClientConfig")

local subIDs = Q8004ClientConfig.SubIDs
local npcs = Q8004ClientConfig.Npcs
local datas = Q8004ClientConfig.Datas

function Q800404_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800404_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800404_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8004"):RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800404_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800404_TriggerIn
