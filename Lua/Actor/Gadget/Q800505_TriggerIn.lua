require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800505_TriggerIn = class("Q800505_TriggerIn", GadgetActorProxy)
Q800505_TriggerIn.defaultAlias = "Q800505_TriggerIn"
local Q8005ClientConfig = require("Quest/Client/Q8005ClientConfig")

local subIDs = Q8005ClientConfig.SubIDs
local npcs = Q8005ClientConfig.Npcs
local datas = Q8005ClientConfig.Datas

function Q800505_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800505_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(12.5, 5, false, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800505_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8005"):RequestInteraction(npcs.Npc12427Data.alias)
    self:DestroySelf()
end

function Q800505_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800505_TriggerIn
