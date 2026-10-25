require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40036Trigger8 = class("Q40036Trigger8", GadgetActorProxy)
Q40036Trigger8.defaultAlias = "Q40036Trigger8"
local Q40036ClientConfig = require("Quest/Client/Q40036ClientConfig")

local subIDs = Q40036ClientConfig.SubIDs
local npcs = Q40036ClientConfig.Npcs
local gadgets = Q40036ClientConfig.Gadgets
local datas = Q40036ClientConfig.Datas

function Q40036Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40036Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(28, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40036Trigger8:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40036"):RequestInteraction(npcs.Npc10045Data.alias)
    self:DestroySelf()
end

function Q40036Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q40036Trigger8
