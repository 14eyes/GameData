require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1030Trigger5 = class("Q1030Trigger5", GadgetActorProxy)
Q1030Trigger5.defaultAlias = "Q1030Trigger5"
local Q1030ClientConfig = require("Quest/Client/Q1030ClientConfig")

local subIDs = Q1030ClientConfig.SubIDs
local npcs = Q1030ClientConfig.Npcs
local datas = Q1030ClientConfig.Datas

function Q1030Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1030Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1030Trigger5:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1030"):RequestInteraction(npcs.Npc1049Data.alias)
    self:DestroySelf()
end

function Q1030Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q1030Trigger5
