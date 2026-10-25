require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006617_Trigger = class("Q4006617_Trigger", GadgetActorProxy)
Q4006617_Trigger.defaultAlias = "Q4006617_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006617_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006617_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(48.50536, 16.53811, 23.70285, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006617_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40066"):RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006617_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006617_Trigger
