require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800516_TriggerIn = class("Q800516_TriggerIn", GadgetActorProxy)
Q800516_TriggerIn.defaultAlias = "Q800516_TriggerIn"
local Q8005ClientConfig = require("Quest/Client/Q8005ClientConfig")

local subIDs = Q8005ClientConfig.SubIDs
local npcs = Q8005ClientConfig.Npcs
local datas = Q8005ClientConfig.Datas

function Q800516_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800516_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(25, 20, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800516_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8005"):RequestInteraction(npcs.Npc12458Data.alias)
    self:DestroySelf()
end

function Q800516_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800516_TriggerIn
