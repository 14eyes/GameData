require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11009Trigger = class("Q11009Trigger", GadgetActorProxy)
Q11009Trigger.defaultAlias = "Q11009Trigger"
local Q11009ClientConfig = require("Quest/Client/Q11009ClientConfig")

local subIDs = Q11009ClientConfig.SubIDs
local npcs = Q11009ClientConfig.Npcs
local datas = Q11009ClientConfig.Datas

function Q11009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11009Trigger:TriggerIn()
    print("TriggerIn")
    self:ClearNarratorTask()
    self:StopNarrator()
    actorMgr:GetActor("11009"):RequestInteraction(npcs.Npc2103Data.alias)
    self:DestroySelf()
end

function Q11009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11009Trigger
