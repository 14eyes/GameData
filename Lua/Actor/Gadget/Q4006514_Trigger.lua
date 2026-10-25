require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006514_Trigger = class("Q4006514_Trigger", GadgetActorProxy)
Q4006514_Trigger.defaultAlias = "Q4006514_Trigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local gadgets = Q40065ClientConfig.Gadgets
local datas = Q40065ClientConfig.Datas

function Q4006514_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006514_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(18.54086, 17.12304, 14.79876, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006514_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40065"):RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006514_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006514_Trigger
