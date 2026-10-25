require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005910Trigger = class("Q4005910Trigger", GadgetActorProxy)
Q4005910Trigger.defaultAlias = "Q4005910Trigger"
local Q40059ClientConfig = require("Quest/Client/Q40059ClientConfig")

local subIDs = Q40059ClientConfig.SubIDs
local npcs = Q40059ClientConfig.Npcs
local gadgets = Q40059ClientConfig.Gadgets
local datas = Q40059ClientConfig.Datas

function Q4005910Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005910Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005910Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40059"):RequestInteraction(npcs.Npc3000Data.alias)
    self:DestroySelf()
end

function Q4005910Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005910Trigger
