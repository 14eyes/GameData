require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007202_Trigger = class("Q4007202_Trigger", GadgetActorProxy)
Q4007202_Trigger.defaultAlias = "Q4007202_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007202_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007202_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(16.7326, 25.67499, 10.05313, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007202_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40072"):RequestInteraction(npcs.Npc12630Data.alias)
    self:DestroySelf()
end

function Q4007202_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007202_Trigger
