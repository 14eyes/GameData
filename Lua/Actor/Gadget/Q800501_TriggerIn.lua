require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800501_TriggerIn = class("Q800501_TriggerIn", GadgetActorProxy)
Q800501_TriggerIn.defaultAlias = "Q800501_TriggerIn"
local Q8005ClientConfig = require("Quest/Client/Q8005ClientConfig")

local subIDs = Q8005ClientConfig.SubIDs
local npcs = Q8005ClientConfig.Npcs
local datas = Q8005ClientConfig.Datas

function Q800501_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800501_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800501_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8005"):RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800501_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800501_TriggerIn
